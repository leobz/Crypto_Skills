# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

#***************************     Admin user   ****************************
env_file =
  File.join(Rails.root, 'config', 'local_env.yml')
    YAML.load(File.open(env_file)).each do |key, value|
    ENV[key.to_s] = value
  end if File.exists?(env_file)

admin = User.new(email: "admin@admin.com", password: ENV["ADMIN_PASSWORD"])
admin.save

#***************************        Jobs     ****************************
if Job.count == 0
  j = Job.new(
    title: "Lead Concept Artist (Retro Studios)",
    description:"Founded in 1998, Retro Studios is a wholly owned subsidiary of Nintendo Company, Ltd.  Retro is a state-of-the-art game development studio, working in conjunction with Nintendo to bring award-winning games to Nintendo's cutting-edge next-generation platforms.  Retro Studios is located in beautiful Austin, Texas. With rolling hills, scenic waterways, abundant wildlife, vibrant music and film scenes, and a laid-back cosmopolitan culture, Austin is a dynamic city with an excellent quality of life.  Austin's sunny weather also supports a great range of outdoor activities, providing plenty of venues for top-notch game developers to recharge and unwind.\r\n\r\nAnnounced by Nintendo in January 2019, Retro Studios is currently in the midst of developing Metroid Prime 4 for the Nintendo Switch.\r\n\r\n\r\nDESCRIPTION OF DUTIES\r\n\r\n- Collaborates with the Art Director, Artists, and Designers to define the look of our projects by working to establish a consistent visual direction for characters, environments, props, effects and mood using all art tools available.\r\n- Adopts a broad range of styles from realistic to highly stylized based on goals and direction for a given project to produce concept art with an appropriate sense of color, drama, shape language, personality, and design.\r\n- Takes ownership of concept work for various characters, environments, and props while actively collaborating with other disciplines such as Design, Art, and Engineering in order to achieve high-quality, innovative concept art\r\n- Creates character, environment, and prop concept art in the form of thumbnails, sketches, breakdowns, reference sheets, paintings, and other digital imagery\r\n- Designs visually cohesive fictional worlds and characters\r\n- Provides technical and aesthetic breakdowns of concept art to support art, design and engineering efforts\r\n- Generates visual contextualization support for gameplay design efforts at all stages\r\n- Works with Art Director, and Leads to provide feedback and guidance to Artists\r\n- Creates storyboards, background illustrations, and promotional artwork\r\n- Provides and receives feedback professionally\r\n- Identifies and implements best practices, workflows and pipelines that pushes the quality bar for concept art.\r\n- Communicates directly with Producers to coordinate Concept Art resources for both internal and external artists, establishing schedules, tracking task and priorities.\r\n- Handles performance evaluations, bonus reviews, and any necessary disciplinary plans for direct reports\r\n- Responsible for having 1-1 meetings to understand career goals for individuals in group\r\n- *This job description outlines primary duties and requirements and is not intended to identify all tasks that may be performed; individuals occupying the position may be required to perform other duties.  The company may modify job duties from time to time, either in practice or in writing.\r\n\r\nSUMMARY OF REQUIREMENTS\r\n\r\n- Has eight or more years' industry experience as a concept artist, including at least two complete product cycles\r\n- Excellent 2D drawing skills with a strong grasp of composition, color theory, perspective, lighting, environment, and architecture\r\n- Mastery of fundamental artistic principles\r\n- Online portfolio with high-quality examples of character and environment concept art\r\n- Experience executing a wide range of artistic styles\r\n- Demonstrated ability to develop visual representations of abstract ideas\r\n- 3D art skills, including modeling, sculpting, material creation and lighting is a big plus\r\n- Experience with Shotgrid, Jira or other task tracking software is a big plus.\r\n- Good communicator, self-motivated, driven to grow professionally\r\n- Undergraduate degree in art-related subject, completion of an intensive art training program, or equivalent experience",
    website: "https://careers.nintendo.com/job-openings/apply/?id=220000006X&src=CWS-10000&loc=retro",
    company: "Nintendo",
    company_website: "https://strike.me/",
    company_description: "Hi! We're an award-winning, full-service creative agency dedicated to creating cutting-edge video game trailers, cinematics, and more!",
    modality: "INTERNSHIP",
    location: "Austin, TX",
    location_mode: "REMOTE",
    min_salary: 70000,
    created_at: "Thu, 27 Apr 2023 12:00:00 UTC +00:00",
    published: true
  )
  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/nintendo.jpg"))
  j.save

  j = Job.new(
    title: "Head of Client Services",
    description:
    "The Company\r\n\r\nSwan is a leading Bitcoin-only financial services company supporting individuals and companies throughout their Bitcoin journey. We hire passionate Bitcoiners who want to work with a self-motivated and globally distributed team.\r\n\r\nThe Role\r\n\r\nSwan is looking for a new Head of Client Services. If you are a Bitcoiner, this is your chance to contribute daily to the mission of Bitcoin adoption in a tangible way. You will manage the team that helps people and entities adopt bitcoin and increase their exposure to bitcoin through their investment portfolios, treasury accounts, retirement accounts, etc. This is a highly visible and rewarding leadership role that will manage a high performing + growing team.\r\n\r\nYour responsibilities\r\n\r\n- Deliver a best-in-class client experience to our clients and prospects\r\n- Represent Swan, our services, and our culture in a high-quality way by:\r\n- Answering questions and inquiries in Zendesk via email, phone, Zoom, and chat\r\n- Resolving the most challenging questions and complaints\r\n- Troubleshooting technical/platform issues with internal teams and third-party partners\r\n- Identify recurring issues and work with the Product team to define functional requirements to improve client experience\r\n- Triage and prioritize both short-term and long-term opportunities to continuously upgrade our products and services\r\n- Answer questions and escalations on social media and review sites e.g., Twitter, Telegram, Trustpilot, App stores, etc\r\n- Organize and improve our FAQs, chatbot, and ticket routing\r\n- Act as a connective link between Product, Engineering, Risk and Operations teams and continuously drive improvement in Client Service quality and client experience\r\n- Support and coordinate external communication with our Marketing and Media teams\r\n- Mentor, train, and hire new Client Services agents\r\n- Design systems and infrastructure to scale our Client Services operations\r\n- Develop scalable onboarding processes for leads generated by Social Media and other teams at Swan\r\n- Develop data-driven insights on Client Service performance, including owning and reporting on key performance metrics on Zendesk and other platforms\r\n\r\nSkills and experience that will help you succeed\r\n\r\n- 2+ years managing a customer-facing technical support team (ideally for a fintech, SaaS, or other fast-growing business)\r\n- 3+ years of Zendesk experience\r\n- 6-8 years of customer service experience\r\n- Strong understanding of Bitcoin and the difference between Bitcoin and “Crypto”. We hire Bitcoiners, not crypto-enthusiasts. You should be excited to talk about Bitcoin, A LOT!\r\n- 2+ years studying Bitcoin deeply (aka ‘down the rabbit hole’) with personal experience purchasing Bitcoin, self-custody, cold storage, etc.\r\n- Fast internet access and a stable workspace\r\n- Ability to work during US business hours\r\n\r\nHere's a bit about our culture\r\n\r\n- We’re a growing team: Fully distributed across the world, Slack and video conferencing are huge here.\r\n- We’re very flat: Leadership is desired and encouraged; we hire people who care about the product they are working on.\r\n- We’re Bitcoiners: We find solutions that encourage Bitcoin principles. Many of us pull double duty alongside our main job, producing content for Bitcoin newsletters, podcasts, social audio platforms, and YouTube shows, and spend some of the day on Twitter educating the masses. We love Bitcoin, and it comes through in our daily chats, meetings, and actions.\r\n\r\nJoin us, become a Swan!",
    website: "https://swanbitcoin.applytojob.com/apply/gpex5GoqL8/Head-Of-Client-Services?source=BitcoinNews&utm_source=bitcoinnews",
    company: "Swan",
    company_website: "https://strike.me/",
    company_description: "Hi! We're an award-winning, full-service creative agency dedicated to creating cutting-edge video game trailers, cinematics, and more!",
    modality: "FREELANCE",
    location: "Global",
    location_mode: "REMOTE",
    min_salary: 40000,
    created_at: "Thu, 27 Apr 2023 12:01:00 UTC +00:00",
    published: true
  )
  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/swan.png"))
  j.save

  j = Job.new(
    title: "Bitcoin Wizard",
    description:
    "Spiral is hiring bitcoin “wizards,” though we will settle for bitcoin mages, sorcerers and sorceresses, witches, warlocks, and druids.\r\n\r\nAbout Spiral\r\n\r\nSpiral is the first free and open-source, internal, non-profit bitcoin organization within a major tech company. We contribute to bitcoin by writing code, funding projects and individuals, educating, entertaining, and testing the limits of what a tiny team can do to impact the future of money. Although many see bitcoin only as digital gold, via the Lightning Network, Spiral envisions bitcoin fulfilling its promise and potential as the global standard for peer-to-peer payments. \r\n\r\nTo date, Spiral’s full-time engineering team has focused exclusively on developing LDK, a kit that simplifies how developers add the Lightning Network to apps and wallets. This year, we plan to build an R&D team within Spiral that will focus on improving bitcoin’s security, decentralization, privacy, scaling, and expressivity beyond LDK. The projects might include applying novel cryptography, developing existing protocol proposals, and creating new innovative protocol proposals. The possibilities aren’t endless, per se, but they are numerous.\r\n\r\nJob Responsibilities\r\n\r\nIdentify and drive forward multiple projects in collaboration with the Spiral team and the greater bitcoin development community.\r\nDevelop a project plan for each active project.\r\nFor a given project, do whatever it takes to make progress toward the goal, including:\r\nBuilding prototypes\r\nWriting tests\r\nDeveloping production code\r\nDeveloping performance benchmarks\r\nCreating simulations\r\nBeing thoughtful about how to gain consensus on changes\r\nRecruiting other FOSS devs to help\r\nWriting bitcoin-dev email posts\r\nParticipating in podcasts and speaking at conferences\r\nRegularly review bitcoin-dev and lightning-dev email lists, relevant “wizards” channels, Bitcoin Optech, relevant research papers, and R&D from other cryptocurrency projects. When possible, engage and provide constructive feedback.\r\nPropose new protocol designs building on what others have done or wholly new ideas.\r\nQualifications\r\n\r\nApplicants should have a deep technical understanding of bitcoin and be comfortable engaging on bitcoin topics and on bitcoin channels such as bitcoin-dev or lightning-dev email lists, local bitdevs, or in a “wizards” channel such as IRC #bitcoin-wizards.\r\n\r\nApplicants should also know which projects they’d like to work on. At a minimum, they should be able to identify three projects worth your time, why they benefit bitcoin, and how your involvement would improve them.\r\n\r\nFinally, strong people skills are a must. Many projects will require attaining developer consensus, including the bitcoin consensus protocol, bitcoin p2p policy, and the LN protocol. To successfully navigate this requires more than just coding talent. Applicants should be ego-free, willing to detach themselves from a particular proposal, and be prepared to conclude a proposal if something learned has made it untenable. Applicants should also seek collaborators and co-authors, be patient yet persistent, and incorporate peer feedback. We undeniably expect a lot from whoever fills these roles. But there’s no other job like them in bitcoin or elsewhere.\r\n\r\nExample projects\r\n\r\nHere is a list of project examples Spiral would find valuable. Again, we expect candidates to drive the process of which projects they will work on, so this list is merely a tool to help a candidate calibrate the scope and depth of future projects.\r\n\r\nScaling innovation\r\nNew methods to share UTXOs among users as trustless and efficiently as possible\r\nLightning efficiency innovation\r\nCross-input signature aggregation\r\nSecurity innovation\r\nBIP324\r\nMining pool decentralization\r\nThreshold signatures for LN\r\nMempool/bitcoin p2p security for L2\r\nEvaluate security risks to bitcoin stemming from MEV, tokens, stablecoins, etc and provide recommendations\r\nPrivacy innovation\r\nApplied ZKP for LN gossip to hide UTXO funding\r\nBitcoin expressivity innovation\r\nBitcoin script opcode innovation, tradeoff evaluation, and driving (CTV, CSFS, TLUV, OP_VAULT, etc.)\r\nThe position\r\n\r\nThis full-time role includes full-time worker benefits. Spiral supports you working anywhere, but you need a home base in a country whose talent pool Block can legally hire from. If you’re not sure whether we can hire from where you live, just reach out and ask. We’ll check.\r\n\r\nHow to apply\r\n\r\nSound good? Not too confused? Great. You’ve cleared the first hurdle. Shoot us an email with the top 3 project ideas you want to work on along with supporting evidence that you’ll successfully complete them: apply@spiral.xyz",
    website: "https://spiral.xyz/blog/square-crypto-grants-for-everybody/",
    company: "Spiral",
    company_website: "https://strike.me/",
    company_description: "Hi! We're an award-winning, full-service creative agency dedicated to creating cutting-edge video game trailers, cinematics, and more!",
    modality: "PART_TIME",
    location: "Remote",
    location_mode: "REMOTE",
    created_at: "Thu, 27 Apr 2023 12:02:00 UTC +00:00",
    published: true
  )
  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  j = Job.new(
    title: "Compliance Associate - El Salvador",
    description:
    "Strike's mission is to build a more connected financial world.\r\n\r\nStrike allows users to send and receive money anywhere, instantly, with no added fees. Strike is built on top of the Bitcoin network – the largest global, interoperable and open payments standard. Strike believes that open payment networks enable universal participation in the financial system, ushering in a new digital economy with truly borderless money transfers. Strike leverages Bitcoin’s open payment network to offer users the first global peer-to-peer payments app and a novel bitcoin-native payments experience.\r\n\r\n\r\nRole:\r\nStrike is looking for a Compliance Associate based in El Salvador to join a fast-growing Bitcoin company. This role provides operations support across the Compliance program including AML/Sanctions alert investigations and KYC/EDD reviews. This role will support Strike’s Compliance operations in El Salvador and globally. Compliance Associates have a direct impact on all business areas and are used to inform critical business decisions across Strike. You will directly impact the overall success of the financial crimes compliance program.\r\n\r\nThe ideal candidate will possess excellent analytical, critical thinking, and writing skills and be able to thrive in a high case volume environment. You should thrive working in an ambitious startup environment and be excited about Strike’s mission and potential. You must be comfortable with a team-first approach in a remote work environment. Depending on candidate experience, there is potential for this role to be a Senior Associate level position.\r\n\r\n\r\nResponsibilities:\r\n- Conduct comprehensive financial crime investigations generated from AML/Sanctions alerts and ad-hoc sources such as law enforcement requests and adverse media. \r\n- Complete analysis of both quantitative and qualitative data sets to produce in-depth and high-quality written reports that provide assessments of financial crime (e.g. money laundering, bribery and corruption, fraud, tax evasion, sanctions and terrorist financing).\r\n- Document concise and consistent risk-based rationale for alert/investigation conclusions. Maintain thorough records and supporting documentation for all investigations.\r\n- Draft Suspicious Activity Reports (SARs) or equivalent with national authorities when necessary.\r\n- Conduct Enhanced Due Diligence (EDD) reviews on customers and/or vendors including Politically Exposed Persons (PEPs).\r\n- Assist with onboarding business customers through the Know Your Business (KYB) process.\r\n- Liaise with operations and onboarding teams as needed during an investigation or KYC review.\r\n\r\n\r\nRequirements: \r\n- Fluent in English; must be able to communicate verbally and must also be able to create high quality written reports in English.\r\n- Minimum four-year degree or equivalent experience. Bachelor's degree in Criminal Justice, Law, Economics, Statistics, International Relations, Business Administration, Finance, or similar field preferred. \r\n- Compliance experience in a financial services company conducting KYC, AML, Sanctions and/or investigations work.\r\n- Resourceful and inquisitive mindset with an ability to analyze structured and unstructured data from disparate sources and identify patterns and develop conclusions.\r\n- Attention to detail and exceptional organizational skills.\r\n- Ability to take ownership of work products and consistently deliver results in a high case volume production environment.\r\n- Ability to handle sensitive and high-risk cases maintaining the highest ethical standards.\r\n- Advanced proficiency with Microsoft Excel including the ability to perform data analysis. Ability to learn new technologies and systems for conducting data analysis\r\n\r\nNice-to-haves:\r\n- Knowledge of the Bitcoin industry and willingness to gain expertise of the financial crime typologies in the Bitcoin space.\r\n- CAMS certification \r\n- Experience using blockchain analytics software \r\n- Fintech experience\r\n\r\n\r\nThis role is for El Salvador- based candidates. More experienced candidates may qualify for a Senior Compliance Associate min_salary level. ",
    website: "https://strike.me/jobs/?gh_jid=4868645004&gh_src=ebdc0b5f4us&utm_source=bitcoinnews",
    company: "Strike",
    company_website: "https://strike.me/",
    company_description: "Hi! We're an award-winning, full-service creative agency dedicated to creating cutting-edge video game trailers, cinematics, and more!",
    modality: "FULL_TIME",
    location: "El Salvador",
    location_mode: "REMOTE",
    created_at: "Thu, 27 Apr 2023 12:02:30 UTC +00:00",
    published: true
  )
  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/strike.png"))
  j.save

  j = Job.new(
  title: "Wordpress Designer",
  description:
  "Are you looking to contribute to the Bitcoin sphere and can't wait to spread the message? At Bitcoin News we're spreading the good news all day and night: Bitcoin has already won!\r\n\r\n-> www.bitcoinnews.com\r\n\r\nJoin the Bitcoin News team and make a difference. We share a passion to advance hyperbitcoinization with content that touches and inspires the heart and mind of no-coiners.\r\n\r\nIf you're into software development and feel the urge to help Bitcoin succeed, here is your opportunity. Add some spice to your life and find meaning in what you do. If you can't leave your fiat mining job but need a 'reason for being' (ikigai) - or if you are seeking to build a track record and find a way into the bitcoin industry, then this is your call.\r\n\r\nWe're currently looking for a Wordpress Developer on the front end to join our dev team. Your responsibility will be to fix minor bugs and help us revamp our page in accordance with our design and product team.\r\n\r\nPlease attach your github or portfolio, linkedin and twitter profile and share your preferred weekly hours you're available.\r\n\r\nPlease accept our apologies if we don't get back to you. If you're extremely interested you can also join our community group on Telegram, you find the link on our website.",
  website: "https://bitcoinnews.com/contact-us/",
  company: "BitcoinNews",
  company_website: "https://strike.me/",
  company_description: "Hi! We're an award-winning, full-service creative agency dedicated to creating cutting-edge video game trailers, cinematics, and more!",
  modality: "FREELANCE",
  location: "Anywhere",
  location_mode: "REMOTE",
  created_at: "Thu, 27 Apr 2023 12:03:00 UTC +00:00",
  published: true
  )
  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/bn.png"))
  j.save

  j = Job.new(
    title: "Volunteering (writing, video editing, design, logistics)",
    description:
    "Are you looking to contribute to the Bitcoin sphere and can't wait to spread the message? At Bitcoin News we're spreading the good news all day and night: Bitcoin has already won!\r\n\r\n-> www.bitcoinnews.com\r\n\r\nJoin the Bitcoin News team and make a difference. We share a passion to advance hyperbitcoinization with content that touches and inspires the heart and mind of pre-coiners.\r\n\r\nIf you feel the urge to help Bitcoin succeed, here is your opportunity. Add some spice to your life and find meaning in what you do. If you can't leave your fiat mining job but need a 'reason for being' (ikigai)? Or if you are seeking to build a track record and find a way into the bitcoin industry, this is your call.\r\n\r\nWe're currently looking for volunteers to join us in different areas:\r\n\r\n* volunteer video editor\r\n* volunteer designer\r\n* volunteer merchandise officer\r\n* volunteer podcast editor\r\n* volunteer script writer\r\n* volunteer news writer\r\n* volunteer growth hacker\r\nAll positions can turn into paid jobs in the future.\r\n\r\nPlease attach your work portfolio and profiles:\r\n\r\n* Linkedin\r\n* Twitter\r\n* Telegram\r\n\r\n\r\nPlease accept our apologies if we don't get back to you. If you're extremely interested you can also join our community group on Telegram, you find the link on our website.",
    website: "https://bitcoinnews.com/contact-us/",               
    company: "BitcoinNews",
    company_website: "https://strike.me/",
    company_description: "Hi! We're an award-winning, full-service creative agency dedicated to creating cutting-edge video game trailers, cinematics, and more!",
    modality: "FREELANCE",
    location: "El Salvador",
    location_mode: "REMOTE",
    created_at: "Thu, 27 Apr 2023 12:04:00 UTC +00:00",
    published: true
  )
  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/bn.png"))
  j.save


  #####################     CHAT GTP  ######################

  # Seed 1
  j = Job.create(
    title: "Front-end Developer",
    description: "Front-end developer position.",
    website: "https://example.com/front-end-dev",
    company: "TechCo",
    company_website: "https://techco.com/",
    company_description: "TechCo is a leading technology company.",
    modality: "FULL_TIME",
    location: "On-site",
    location_mode: "ON_SITE",
    category: "COMPUTER_SCIENCE",
    created_at: Time.now,
    published: true
  )

  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  # Seed 2
  j = Job.create(
  title: "Content Writer",
  description: "Content writer job opportunity.",
  website: "https://example.com/content-writer",
  company: "Writers Inc.",
  company_website: "https://writersinc.com/",
  company_description: "Writers Inc. specializes in content creation.",
  modality: "PART_TIME",
  location: "Remote",
  location_mode: "REMOTE",
  category: "ENGLISH_STUDIES",
  created_at: Time.now,
  published: true
)

  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  # Seed 3
  j = Job.create(
  title: "Financial Analyst",
  description: "Financial analyst position available.",
  website: "https://example.com/financial-analyst",
  company: "FinancePros",
  company_website: "https://financepros.com/",
  company_description: "FinancePros offers financial services.",
  modality: "FULL_TIME",
  location: "Hybrid",
  location_mode: "HYBRID",
  category: "FINANCE",
  created_at: Time.now,
  published: true
)

  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  # Seed 4
  j = Job.create(
  title: "Data Scientist Intern",
  description: "Data scientist intern opportunity.",
  website: "https://example.com/data-scientist-intern",
  company: "TechGenius",
  company_website: "https://techgenius.com/",
  company_description: "TechGenius is a tech company.",
  modality: "INTERNSHIP",
  location: "Remote",
  location_mode: "REMOTE",
  category: "INFORMATION_SYSTEMS",
  created_at: Time.now,
  published: true
)

  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  # Seed 5
  j = Job.create(
  title: "Accountant",
  description: "Accountant position available.",
  website: "https://example.com/accountant",
  company: "Numbers Inc.",
  company_website: "https://numbersinc.com/",
  company_description: "Numbers Inc. provides accounting services.",
  modality: "FULL_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "ACCOUNTING",
  created_at: Time.now,
  published: true
)

  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  # Seed 6
  j = Job.create(
  title: "Marketing Specialist",
  description: "Marketing specialist job opening.",
  website: "https://example.com/marketing-specialist",
  company: "MarketMasters",
  company_website: "https://marketmasters.com/",
  company_description: "MarketMasters excels in marketing.",
  modality: "PART_TIME",
  location: "Remote",
  location_mode: "REMOTE",
  category: "BUSINESS",
  created_at: Time.now,
  published: true
)

  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  # Seed 7
  j = Job.create(
  title: "Teacher Assistant",
  description: "Teacher assistant position.",
  website: "https://example.com/teacher-assistant",
  company: "EduLearn",
  company_website: "https://edulearn.com/",
  company_description: "EduLearn is an education company.",
  modality: "PART_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "EDUCATION",
  created_at: Time.now,
  published: true
)

  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  # Seed 8
  j = Job.create(
  title: "Math Tutor",
  description: "Math tutor needed.",
  website: "https://example.com/math-tutor",
  company: "MathMasters",
  company_website: "https://mathmasters.com/",
  company_description: "MathMasters specializes in math education.",
  modality: "PART_TIME",
  location: "Hybrid",
  location_mode: "HYBRID",
  category: "MATHEMATICS",
  created_at: Time.now,
  published: true
)

  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  # Seed 9
  j = Job.create(
  title: "Sales Representative",
  description: "Sales representative position.",
  website: "https://example.com/sales-representative",
  company: "SalesForce",
  company_website: "https://salesforce.com/",
  company_description: "SalesForce is a sales company.",
  modality: "FULL_TIME",
  location: "Remote",
  location_mode: "REMOTE",
  category: "BUSINESS_ADMINISTRATION",
  created_at: Time.now,
  published: true
)

  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save

  # Seed 10
  j = Job.create(
  title: "Research Scientist",
  description: "Research scientist job opportunity.",
  website: "https://example.com/research-scientist",
  company: "SciTech",
  company_website: "https://scitech.com/",
  company_description: "SciTech conducts scientific research.",
  modality: "FULL_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "SCIENCE",
  created_at: Time.now,
  published: true
)


JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save



# Seed 1 - Categoría: ART
j = Job.create(
  title: "Graphic Designer",
  description: "Graphic designer position for creative projects.",
  website: "https://example.com/graphic-designer",
  company: "DesignStudio",
  company_website: "https://designstudio.com/",
  company_description: "DesignStudio specializes in graphic design.",
  modality: "FULL_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "ART",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 2 - Categoría: COMPUTER_SCIENCE
j = Job.create(
  title: "Software Engineer",
  description: "Software engineer position for coding projects.",
  website: "https://example.com/software-engineer",
  company: "TechSolutions",
  company_website: "https://techsolutions.com/",
  company_description: "TechSolutions offers software solutions.",
  modality: "FULL_TIME",
  location: "Hybrid",
  location_mode: "HYBRID",
  category: "COMPUTER_SCIENCE",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 3 - Categoría: ENGLISH_STUDIES
j = Job.create(
  title: "English Language Instructor",
  description: "English language instructor needed for teaching.",
  website: "https://example.com/english-instructor",
  company: "LanguageMasters",
  company_website: "https://languagemasters.com/",
  company_description: "LanguageMasters specializes in language education.",
  modality: "PART_TIME",
  location: "Remote",
  location_mode: "REMOTE",
  category: "ENGLISH_STUDIES",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 4 - Categoría: FINANCE
j = Job.create(
  title: "Financial Advisor",
  description: "Financial advisor position for financial planning.",
  website: "https://example.com/financial-advisor",
  company: "FinancePro",
  company_website: "https://financepro.com/",
  company_description: "FinancePro provides financial advice.",
  modality: "FULL_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "FINANCE",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 5 - Categoría: INFORMATION_SYSTEMS
j = Job.create(
  title: "Database Administrator",
  description: "Database administrator position for managing databases.",
  website: "https://example.com/database-administrator",
  company: "DataTech",
  company_website: "https://datatech.com/",
  company_description: "DataTech specializes in data management.",
  modality: "FULL_TIME",
  location: "Hybrid",
  location_mode: "HYBRID",
  category: "INFORMATION_SYSTEMS",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 6 - Categoría: ACCOUNTING
j = Job.create(
  title: "Accountant",
  description: "Accountant position available for financial accounting.",
  website: "https://example.com/accountant",
  company: "Numbers Inc.",
  company_website: "https://numbersinc.com/",
  company_description: "Numbers Inc. provides accounting services.",
  modality: "FULL_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "ACCOUNTING",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 7 - Categoría: BUSINESS
j = Job.create(
  title: "Business Analyst",
  description: "Business analyst job opportunity for analysis.",
  website: "https://example.com/business-analyst",
  company: "BizInsights",
  company_website: "https://bizinsights.com/",
  company_description: "BizInsights specializes in business analysis.",
  modality: "FULL_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "BUSINESS",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 8 - Categoría: BUSINESS_ADMINISTRATION
j = Job.create(
  title: "Administrative Assistant",
  description: "Administrative assistant position for office tasks.",
  website: "https://example.com/administrative-assistant",
  company: "OfficePros",
  company_website: "https://officepros.com/",
  company_description: "OfficePros offers office management services.",
  modality: "PART_TIME",
  location: "Remote",
  location_mode: "REMOTE",
  category: "BUSINESS_ADMINISTRATION",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 9 - Categoría: EDUCATION
j = Job.create(
  title: "Math Teacher",
  description: "Math teacher needed for teaching mathematics.",
  website: "https://example.com/math-teacher",
  company: "EduLearn",
  company_website: "https://edulearn.com/",
  company_description: "EduLearn is an education company.",
  modality: "FULL_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "EDUCATION",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 10 - Categoría: MATHEMATICS
j = Job.create(
  title: "Mathematician",
  description: "Mathematician position for mathematical research.",
  website: "https://example.com/mathematician",
  company: "MathMinds",
  company_website: "https://mathminds.com/",
  company_description: "MathMinds specializes in mathematical research.",
  modality: "PART_TIME",
  location: "Hybrid",
  location_mode: "HYBRID",
  category: "MATHEMATICS",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 11 - Categoría: PHYSICS
j = Job.create(
  title: "Physicist",
  description: "Physicist position for physics research.",
  website: "https://example.com/physicist",
  company: "PhysicsLab",
  company_website: "https://physicslab.com/",
  company_description: "PhysicsLab conducts physics research.",
  modality: "FULL_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "PHYSICS",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 12 - Categoría: SCIENCE
j = Job.create(
  title: "Lab Technician",
  description: "Lab technician position for scientific experiments.",
  website: "https://example.com/lab-technician",
  company: "SciTech Labs",
  company_website: "https://scitechlabs.com/",
  company_description: "SciTech Labs specializes in scientific research.",
  modality: "PART_TIME",
  location: "Remote",
  location_mode: "REMOTE",
  category: "SCIENCE",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 13 - Categoría: STATISTICS_AND_DECISION_THEORY
j = Job.create(
  title: "Statistician",
  description: "Statistician position for statistical analysis.",
  website: "https://example.com/statistician",
  company: "StatsTech",
  company_website: "https://statstech.com/",
  company_description: "StatsTech specializes in statistical analysis.",
  modality: "FULL_TIME",
  location: "Hybrid",
  location_mode: "HYBRID",
  category: "STATISTICS",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

# Seed 14 - Categoría: LAW
j = Job.create(
  title: "Legal Counsel",
  description: "Legal counsel position for legal matters.",
  website: "https://example.com/legal-counsel",
  company: "LegalSolutions",
  company_website: "https://legalsolutions.com/",
  company_description: "LegalSolutions provides legal services.",
  modality: "FULL_TIME",
  location: "On-site",
  location_mode: "ON_SITE",
  category: "LAW",
  created_at: Time.now,
  published: true
)
JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
j.save

Job.all.filter {|j| j.company_logo_attachment.nil?}.each do |j|
  JobsHelper.attach_company_logo(j, Rails.root.join("app/assets/images/company_logos/spiral.png"))
  j.save
end

end
