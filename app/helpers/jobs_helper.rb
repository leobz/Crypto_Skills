module JobsHelper
  def job_card(job)
    content_tag(:div, class: 'card mb-3') do
      content_tag(:div, class: 'row g-0 align-items-center') do
        # Image
        content_tag(:div, class: 'col-2 d-flex justify-content-center') do
          image_tag('icons/company-bbb.png')
        end +

          # Body
          content_tag(:div, class: 'col-10') do
            content_tag(:div, class: 'card-body') do
              # Title
              content_tag(:h5, class: 'card-title') do
                job.title
              end +

                # Subtitle
                content_tag(:h6, class: 'card-subtitle mb-2 text-body-secondary') do
                  job.company.name
                end +

                # Location
                content_tag(:p, class: 'card-text', style: 'line-height: 1;') do
                  concat content_tag(:small, job.location, class: 'text-body-secondary')
                  concat tag.br(class: 'small')
                  concat content_tag(:small, job.location_mode, class: 'text-body-secondary')
                end +

                # Date and Salary
                content_tag(:span, class: 'card-text', style: 'float: left;') do
                  content_tag(:small, job.date, class: 'text-body-secondary')
                end +
                content_tag(:span, class: 'card-text', style: 'float: right;') do
                  content_tag(:small, "$#{job.salary}", class: 'text-body-secondary')
                end
            end
          end
      end
    end
  end
end
