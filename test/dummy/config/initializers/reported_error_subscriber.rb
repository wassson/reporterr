# frozen_string_literal: true

class ReportedErrorSubscriber
  def report(error, handled:, severity:, context:, source: nil)
    ctx = Reporterr::ContextBuilder.build(context)
    ReportedError.create!(error:, severity:, context: ctx)
  end
end

Rails.error.subscribe(ReportedErrorSubscriber.new)
