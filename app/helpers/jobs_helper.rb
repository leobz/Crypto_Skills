module JobsHelper
  def job_card(job, full_size = nil)
    content_tag(:div, class: "card card-index", style: "margin-bottom: 0.5%;" + (full_size ? 'transform: scale(1);' : '')) do
      content_tag(:div, class: "row g-0 align-items-center") do
        #***************************** Image *****************************
        content_tag(:div, class: "col-2 d-flex justify-content-right") do
          image_tag(job.company_logo, class: "logo-fluid", style: "padding-left:15px;")
        end +
        #***************************** Body ******************************
        content_tag(:div, class: "col-10") do
          content_tag(:div, class: "card-body preview-card") do
            #***************************** Title *************************
            content_tag(:h4, job.title, class: 'card-title') +
            #***************************** Subtitle **********************
            content_tag(:h6, job.company, class: 'card-subtitle mb-2') +
            #***************************** Secondary *********************
            content_tag(:div, class: "info-container") do
              concat(content_tag(:div, class: "info-item-card") do
                concat tag.i(class: "fa fa-map-marker")
                concat content_tag(:span, job.location, style: "margin-left:5px;")
              end)
              concat(content_tag(:div, class: "info-item-card") do
                concat tag.i(class: "fa fa-clock-o", 'aria-hidden': true)
                concat(content_tag(:span, job.modality.humanize, style: "margin-left:5px;"))
              end)
              concat(content_tag(:div, class: "info-item-card") do
                concat tag.i(class: "fa fa-wifi", 'aria-hidden': true)
                concat(content_tag(:span, job.location_mode.humanize, style: "margin-left:5px;"))
              end)
            end +
            content_tag(:span, class: 'card-text', style: 'float: right;') do
              content_tag(:small, job.min_salary ? "$#{job.min_salary}" : "")
            end
          end
        end
      end
    end
  end

  # Persist an image as company_logo in a Job
  def self.attach_company_logo(job, image_path)
    f = File.open(image_path)
    logo_blob = ActiveStorage::Blob.create_and_upload!(io: f, filename: 'logo.png', content_type: 'image/png')
    job.company_logo.attach(logo_blob)
  end
end
