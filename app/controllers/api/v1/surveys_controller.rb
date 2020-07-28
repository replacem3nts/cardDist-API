class Api::V1::SurveysController < ApplicationController
    before_action :authorized

    def create
        @rx = @cbo.rxes.find_by(hc_id: 1)
        if @rx
            @survey = Survey.create(rx_id: @rx.id)
            survey_updated = @survey.update(survey_params)
            survey_relations = params[:surveyrels]
            @survey.covidimpacts.push(Covidimpact.find(survey_relations[:covidImps]))
            @survey.doctorvisits.push(Doctorvisit.find(survey_relations[:drVisits]))
            @survey.funduses.push(Funduse.find(survey_relations[:funds]))
            @survey.create_hhmembers(survey_relations[:hhmembers])
            if survey_updated 
                render json: { rxId: @rx.id }
            else
                render json: { message: 'Sorry! Could not create, please try again.'}
            end
        end
    end

    private
    def survey_params
        params.require(:survey).permit(:age, :gender, :hhsize, :hhfamilies, :zipcode, :mixedstatus)
    end
end
