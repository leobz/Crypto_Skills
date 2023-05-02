module JobsHelper
  def job_card(job, full_size = nil)
    content_tag(:div, class: "card", style: "" + (full_size ? 'transform: scale(1);' : '')) do
      content_tag(:div, class: "row g-0 align-items-center") do
        #***************************** Image *****************************
        content_tag(:div, class: "col-2 d-flex justify-content-center") do
          image_tag(job.company_logo, style: "width: 50px; height: 50px;")
        end +
        #***************************** Body ******************************
        content_tag(:div, class: "col-10") do
          content_tag(:div, class: "card-body") do
            #***************************** Title *************************
            content_tag(:h5, job.title, class: 'card-title') +
            #***************************** Subtitle **********************
            content_tag(:h6, job.company, class: 'card-subtitle mb-2 text-body-secondary') +
            #***************************** Secondary *********************
            content_tag(:p, class: 'card-text', style: 'line-height: 1;') do
              concat content_tag(:small, job.location, class: 'text-body-secondary')
              concat tag.br(class: 'small')
              concat content_tag(:small, job.location_mode, class: 'text-body-secondary')
            end +
            content_tag(:span, class: 'card-text', style: 'float: left;') do
              content_tag(:small, job.created_at, class: 'text-body-secondary')
            end +
            content_tag(:span, class: 'card-text', style: 'float: right;') do
              content_tag(:small, "$#{job.salary ? job.salary : "------"}", class: 'text-body-secondary')
            end
          end
        end
      end
    end
  end
end
