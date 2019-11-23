class AppData {

  static String ml = 'https://9to5google.com/wp-content/uploads/sites/4/2019/04/google-ml-kit.png?w=1312';
  static String firebase = 'https://www.bounteous.com/sites/default/files/styles/default/public/insights/2018-12/previews/20181214-how_campaign_attribution_works_in_google_analytics_for_firebase-website.png?itok=r1SBAPOS';
  static String wtm = 'https://www.yovizag.com/wp-content/uploads/2019/03/web-new_women-techmark-758x474.jpg';
  static String kotlin = 'http://www.codekul.com/blog/wp-content/uploads/2017/06/back-kotlin-android-1.jpg';
  static String ai = 'https://www.analyticsinsight.net/wp-content/uploads/2019/10/Google-AI.jpg';
  static String web = 'https://about.gitlab.com/images/blogimages/gitlab-blog-cover.png';
  static String cicd = 'https://about.gitlab.com/images/ci/ci-cd-test-deploy-illustration_2x.png';
  static String android = 'https://cdn.dribbble.com/users/68604/screenshots/2346182/android-developers-card-artwork.png';
  static String cloud = 'https://sciencetechvideos.files.wordpress.com/2018/12/gcp.jpg';

  static String getUrlBySpeakerId(String speakerId) {
    List<Map> _speakers = speakerList.where((i) => i['speaker'] == speakerId).toList();
    return _speakers[0]['details']['photoUrl'];
  }
  
  static List<Map<String, dynamic>> sessionList = [
    {
      "startTime": "08:30",
      "endTime": "09:30",
      "data": {
        "icon": "registration",
        "title": "Registration",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/hoverboard-experimental.appspot.com/o/images%2Fbackgrounds%2Fregistration.jpg?alt=media&token=27328646-d323-4cca-904c-75f021bc3ffe",
        "description":
            "Get your badge and enjoy talking with tech edicts around"
      }
    },
    {
      "startTime": "9:30",
      "endTime": "10:15",
      "data": {
        "description": "Coffeeeeeee!",
        "icon": "coffee-break",
        "title": "Morning coffee",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/hoverboard-experimental.appspot.com/o/images%2Fbackgrounds%2Fmorning.jpg?alt=media&token=d0da3d64-fc63-48c6-9d41-1460451dca64"
      }
    },
    {
      "startTime": "10:15",
      "endTime": "10:45",
      "data": {
        "tags": ["AI", "ML"],
        "speakers": ["Siddhant_Agarwal"],
        "title": "Keynote - Cruising on AI Wave",
        "language": "English",
        "description":
            "Which covers advancements in AI, how AI is helping citizens, Edge AI and Edge TPUs, potential AI unlocks, and the future of AI"
      }
    },
    {
      "startTime": "11:00",
      "endTime": "11:45",
      "data": {
        "tags": ["Firebase", "Cloud"],
        "speakers": ["Hiranya_Jayathilaka"],
        "title": "Anatomy of the Cloud",
        "language": "English",
        "description":
            "Cloud computing has revolutionized the way developers implement and deploy applications. By running applications on large-scale compute infrastructures and programming platforms that are remotely accessible as utility services, cloud computing provides scalability, high-availability, and increased user productivity.\n\nIn this talk we will look at the nuts and bolts of real world cloud platforms. We will talk about the hardware and the data centers that physically make up the cloud, and some of the scheduling and control software that help keep cloud platforms operate continuously at scale. Finally, we will discuss the symbiotic relationship between cloud computing and mobile apps, and look at how platforms like Google Firebase make it easier to develop world-class apps powered by the cloud.",
        "complexity": "Intermediate"
      }
    },
    {
      "startTime": "11:45",
      "endTime": "12:15",
      "data": {
        "complexity": "Intermediate",
        "tags": ["WTM"],
        "speakers": ["Vaibhavi_Desai"],
        "title": "Diversity Keynote - 50/50 by 2020: Are we there ?",
        "language": "English",
        "description": ""
      }
    },
    {
      "startTime": "12:15",
      "endTime": "13:00",
      "data": {
        "complexity": "Beginner",
        "tags": ["Android", "Kotlin"],
        "speakers": ["Kirill_Shmakov"],
        "title": "Kotlin Multiplatform for Mobile Development",
        "language": "English",
        "description": "TBD"
      }
    },
    {
      "startTime": "13:00",
      "endTime": "13:45",
      "data": {
        "description": "Foooooooood!",
        "icon": "lunch",
        "title": "Lunch",
        "image":
            "https://firebasestorage.googleapis.com/v0/b/hoverboard-experimental.appspot.com/o/images%2Fbackgrounds%2Flunch.jpg?alt=media&token=bc82aaff-92cc-4dcc-a00e-2b6f30a40225"
      }
    },
    {
      "startTime": "14:00",
      "endTime": "14:30",
      "data": {
        "tags": ["Cloud", "ML"],
        "speakers": ["Albert_Padin"],
        "title": "GCP AI Product Introduction",
        "language": "English",
        "description": "TBD",
        "complexity": "Beginner"
      }
    },
    {
      "startTime": "14:35",
      "endTime": "15:05",
      "data": {
        "tags": ["Web", "CI/CD"],
        "speakers": ["Ramya_Authappan"],
        "title": "Quality Engineering @ Gitlab",
        "language": "English",
        "description":
            "In this session, various tools and technologies which are used to test Gitlab will be discussed. Also it will be explained how engineering productivity is increased by using  few built-in automations.   There are few features of Gitlab which we in turn use to test Gitlab itself. Also, there are some automations that we did in the Quality team which proved to be so useful that it was incorporated as a feature in Gitlab! This talk will give a glimpse of the \"Inception\" effect of testing and building Gitlab. ",
        "complexity": "Beginner"
      }
    },
    {
      "startTime": "15:10",
      "endTime": "15:40",
      "data": {
        "complexity": "Intermediate",
        "tags": ["Cloud"],
        "speakers": ["Mithila_Somasiri"],
        "title": "Emerging Tech Trends and Opportunities",
        "language": "English",
        "description": "TBD"
      }
    },
    {
      "startTime": "15:45",
      "endTime": "16:15",
      "data": {
        "title": "Platform, AppCompat & now Material",
        "language": "English",
        "description":
            "This talk will be a crash course on Themes and Styles. Demystify how styles work and how to read platform/support libraries values.xml file. Decipher which style a View uses, what attributes it exposes and how to customize them. We’ll also see how you can organize your own theme and styles to offer a consistent look and feel across your app and make branding updates a breeze.\n",
        "complexity": "Intermediate",
        "tags": ["Android"],
        "speakers": ["Saurabh_Arora"]
      }
    }
  ];

  static List<Map<String, dynamic>> speakerList = [
    {
      "speaker": "Albert_Padin",
      "details": {
        "title": "Co-Founder & CTO",
        "photo":
            "https://lh5.googleusercontent.com/-tmpLMtYWiVE/AAAAAAAAAAI/AAAAAAAAMJw/5D7JvbPNprg/s172-c/photo.jpg",
        "order": 6,
        "featured": true,
        "company": "Symph",
        "companyLogoUrl":
            "https://media.licdn.com/dms/image/C510BAQE376nsMXIYQA/company-logo_400_400/0?e=1577923200&v=beta&t=Ux1sCQwFZipLWdH7YSFlMKxCGKoOArrWbbWurkOxuJE",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/albertpadin/"
          }
        ],
        "country": "Cebu, Philippines",
        "bio":
            "Albert is a developer and entrepreneur who's worked on consumer, enterprise, and government software products. He is the co-founder and CTO of Symph, a design, development, and startup studio. At Symph, he has architected and developed solutions for 500 Startups, Office of the President of the Philippines, and the World Bank. Albert leads a diverse team of developers in creating software solutions. He ensures that the team's output is high quality and performs well at scale. Albert is also passionate about empowering startups and has been involved in the Philippine Startup Ecosystem, by facilitating and mentoring at Startup Weekends and other events. Prior to that, Albert started SpellDial, directed plays, and mentored street children. He studied Information Technology at the Centre for International Education Global Colleges. He lives in Cebu City, Philippines with his wife. His interests include theatre, performing arts, and the non-trivial act of eradicating poverty.",
        "badges": [
          {
            "name": "gde",
            "description": "Google Cloud Platform, Machine Learning",
            "link":
                "https://developers-dot-devsite-v2-prod.appspot.com/community/experts/directory/profile/profile-albert_padin"
          }
        ],
        "shortBio":
            "Albert is a developer and entrepreneur who's worked on consumer, enterprise, and government software products. He is the co-founder and CTO of Symph, a design, development, and startup studio.",
        "photoUrl":
            "https://lh5.googleusercontent.com/-tmpLMtYWiVE/AAAAAAAAAAI/AAAAAAAAMJw/5D7JvbPNprg/s172-c/photo.jpg",
        "name": "Albert Padin",
        "companyLogo":
            "https://media.licdn.com/dms/image/C510BAQE376nsMXIYQA/company-logo_400_400/0?e=1577923200&v=beta&t=Ux1sCQwFZipLWdH7YSFlMKxCGKoOArrWbbWurkOxuJE"
      }
    },
    {
      "speaker": "Amalka_Pathirage",
      "details": {
        "company": "Pearson",
        "companyLogoUrl":
            "https://devfest-17.firebaseapp.com/images/logos/pearson.png",
        "photoUrl":
            "https://media.licdn.com/dms/image/C5103AQGtu4r5nd8ROQ/profile-displayphoto-shrink_800_800/0?e=1579737600&v=beta&t=ko2mVT7pIf3a7vMl_F1r1CFb2St3scbO3cQ6bl6CqfM",
        "socials": [
          {
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/amalka-pathirage-65ba3a13",
            "name": "LinkedIn"
          }
        ],
        "name": "Amalka Pathirage",
        "country": "Sri Lanka",
        "bio":
            "Amalka has been in Software Engineering for about 10 years and most of his career is focused on mobile application development and in Android. He is also keen on other mobile platforms like Windows Mobile, and iOS. Amalka is a Technical Lead in Pearson working on mobile technologies.He holds a Bachelor's Degree in IT from SLIIT and a Master's Degree in Enterprise Application Development from Sheffield Hallam University.",
        "companyLogo":
            "https://devfest-17.firebaseapp.com/images/logos/pearson.png",
        "title": "Principal Software Engineer",
        "photo":
            "https://media.licdn.com/dms/image/C5103AQGtu4r5nd8ROQ/profile-displayphoto-shrink_800_800/0?e=1579737600&v=beta&t=ko2mVT7pIf3a7vMl_F1r1CFb2St3scbO3cQ6bl6CqfM",
        "order": 21
      }
    },
    {
      "speaker": "Aruna_Prabhashwara",
      "details": {
        "title": "Software Engineer",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/aruna_cv_photo_2.jpg?alt=media&token=dba62d32-bc9a-4800-ba80-62d59e2345e7",
        "order": 19,
        "featured": false,
        "company": "Pick Me",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68",
        "socials": [
          {"icon": "linkedin", "link": "", "name": "LinkedIn"}
        ],
        "country": "Colombo , Sri Lanka",
        "bio": " ",
        "shortBio": "",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/aruna_cv_photo_2.jpg?alt=media&token=dba62d32-bc9a-4800-ba80-62d59e2345e7",
        "name": "Aruna Prabhashwara",
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68"
      }
    },
    {
      "speaker": "Chathu_Wishwajith",
      "details": {
        "title": "Auth0 Ambassador",
        "order": 16,
        "shortBio":
            "He is Co-Founder of a Startup where few of its products are powered by Full-stack JS.an Auth0 Ambassador, Unity User Group Leader and Co-Organizer of Colombo JS Meetup.",
        "company": "0Auth",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfestlk18.appspot.com/o/pre_speakers%2F22136978_1461077107314950_4234447999710259095_o.jpg?alt=media&token=e5016dad-10c2-40f0-9e90-9c17c03d97e2",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/thilinapremasiri/"
          }
        ],
        "name": "Chathu Wishwajith",
        "country": "Sri Lanka",
        "bio":
            "He is Co-Founder of a Startup where few of its products are powered by Full-stack JS.an Auth0 Ambassador, Unity User Group Leader and Co-Organizer of Colombo JS Meetup.",
        "companyLogo":
            "https://devfest-17.firebaseapp.com/images/logos/0auth.pngg"
      }
    },
    {
      "speaker": "Hiranya_Jayathilaka",
      "details": {
        "shortBio":
            "Hiranya is a tech lead on the Firebase team. He works on Firebase Admin SDKs that enable backend integrations of Firebase.",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/hkj.jpg?alt=media&token=09243e79-8cdd-48b6-85f7-d2d21ddca4a6",
        "name": "Hiranya Jayathilaka",
        "companyLogo": "../images/logos/google.svg",
        "title": "Senior Software Engineer",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/hkj.jpg?alt=media&token=09243e79-8cdd-48b6-85f7-d2d21ddca4a6",
        "order": 0,
        "featured": true,
        "company": "Google",
        "companyLogoUrl": "../images/logos/google.svg",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/hiranyajayathilaka"
          }
        ],
        "country": "Mountain View, California",
        "bio":
            "Hiranya is a tech lead on the Google Firebase team. He works on the Firebase Admin SDKs, which enable server-side and backend integrations of Firebase. Prior to joining Google, Hiranya worked as a software engineer at WSO2, where he developed open source enterprise integration and API management technologies. He is a committer and a project management committee member for several Apache projects.\n\nHiranya earned a bachelor’s degree in engineering from University of Moratuwa. He also received a Ph.D. in computer science from University of California, Santa Barbara. Hiranya’s dissertation focuses on the governance of cloud applications via policies, SLOs and programming language techniques. He has published original research in numerous peer-reviewed journals and conferences specialized in cloud computing and web services",
        "badges": [
          {
            "name": "google",
            "description": "Senior Software Engineer",
            "link": ""
          }
        ]
      }
    },
    {
      "speaker": "Indra_Maryati",
      "details": {
        "badges": [
          {"link": "", "name": "gdg", "description": "GDG Surabaya"}
        ],
        "shortBio":
            "Sharing and teaching is her passion. she Started learning Android since 2009. From that she always enthusiast in learning about Google Technologies, especially Android. Now her working as a lecturer in Mobile Development, UI/UX and Database fields. To fulfill her sharing passion, she joining and managing GDG Surabaya for about 7 years.",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/indra.jpg?alt=media&token=9cdf0867-fe87-4e96-8b47-24fa207589e2",
        "name": " Indra Maryati",
        "companyLogo": "",
        "title": "GDG Surabaya Organizer",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/indra.jpg?alt=media&token=9cdf0867-fe87-4e96-8b47-24fa207589e2",
        "order": 13,
        "featured": true,
        "company": "GDG Surabaya",
        "companyLogoUrl": "",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/indramaryati"
          }
        ],
        "country": "Surabaya, Indonesia",
        "bio":
            "Sharing and teaching is her passion. she Started learning Android since 2009. From that she always enthusiast in learning about Google Technologies, especially Android. Now her working as a lecturer in Mobile Development, UI/UX and Database fields. To fulfill her sharing passion, she joining and managing GDG Surabaya for about 7 years."
      }
    },
    {
      "speaker": "Irum_Zahra",
      "details": {
        "shortBio":
            "Irum is working in industry for more than 3 years. During her experiences she worked closely with tech startups. She led the team responsible for developing Artificial Intelligence based surveillance solutions. ",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/irum.jpeg?alt=media&token=8efed1fd-35cb-4a93-82bf-62bf14cef518",
        "name": "Irum Zahra",
        "companyLogo":
            "https://media.licdn.com/dms/image/C510BAQHfVscZaA-3Vg/company-logo_400_400/0?e=1580947200&v=beta&t=veabjJfKVuvzp45xQ-bwh9pyU9rgWracv7yS7_S-LdI",
        "title": " Women Techmaker Ambassador and GDG CLOUD Manage",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/irum.jpeg?alt=media&token=8efed1fd-35cb-4a93-82bf-62bf14cef518",
        "order": 11,
        "featured": true,
        "company": " GDG Cloud Islamabad",
        "companyLogoUrl":
            "https://media.licdn.com/dms/image/C510BAQHfVscZaA-3Vg/company-logo_400_400/0?e=1580947200&v=beta&t=veabjJfKVuvzp45xQ-bwh9pyU9rgWracv7yS7_S-LdI",
        "socials": [
          {
            "name": "Twitter",
            "icon": "twitter",
            "link": "https://www.linkedin.com/in/irum-zahra-awan-1168a6115"
          }
        ],
        "country": "Islamabad, Pakistan",
        "bio":
            "Irum is working in industry for more than 3 years. During her experiences she worked closely with tech startups. She led the team responsible for developing Artificial Intelligence based surveillance solutions. Irum is very enthusiastic about technology so apart from working in tech industry she co-founded Islamabad.AI to train students to minimize the gap between academia and industry. Irum is leading Pakistan's first Google Developers Group (GDG) CLOUD in Islamabad and also serving as a Google's Women Techmakers Ambassador. Irum believes strongly in giving back to the community and empowering women in STEM fields. Irum is currently working at Red Buffer as Machine Learning Engineer. \nTechnical enthusiasm aside, Irum is very passionate and eager about adventure and travelling the world to get acquaintance with different cultures in different areas of world. She loves cars, dogs and food.",
        "badges": [
          {"link": "", "name": "gdg", "description": "GDG Cloud Islamabad"}
        ]
      }
    },
    {
      "speaker": "Kamal_Vaid",
      "details": {
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/IMG_20190729_022015_012%20(1)%20-%20smart%20solutions.jpg?alt=media&token=33367668-6d7a-4fd2-8c82-b77fcbcdaf3e",
        "name": "Kamal Vaid",
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/400px-Infosys_logo.svg.png?alt=media&token=ed371161-246e-499a-9f12-be82d867f1a2",
        "title": "Technology Lead",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/IMG_20190729_022015_012%20(1)%20-%20smart%20solutions.jpg?alt=media&token=33367668-6d7a-4fd2-8c82-b77fcbcdaf3e",
        "order": 9,
        "featured": false,
        "company": "Infosys Limited",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/400px-Infosys_logo.svg.png?alt=media&token=ed371161-246e-499a-9f12-be82d867f1a2",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/kamal-vaid"
          }
        ],
        "country": "Chandigarh, India",
        "bio":
            "He is working as a Technology Lead in Infosys Limited at Chandigarh, where he is exploring Android. he is been working on Android for more 6 years now. he also handle teams for Android and Flutter here.Apart from working experience,he is community lover. he is the organizer for GDG Chandigarh and GDE for Google Assistant. he write blogs on Android and Google Assistant on regular basis. ",
        "badges": [
          {
            "link": "",
            "name": "gde",
            "description": "Google Assistant Google Developer Expert"
          }
        ],
        "shortBio":
            "He is working as a Technology Lead in Infosys Limited at Chandigarh, where he is exploring Android. he is been working on Android for more 6 years now."
      }
    },
    {
      "speaker": "Kirill_Shmakov",
      "details": {
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/kirill_schmakov.jpg?alt=media&token=4883c8aa-d44c-49d4-bcc7-da5dbaa3392c",
        "order": 4,
        "featured": true,
        "company": "Jetbrains",
        "companyLogoUrl":
            "https://devfest19.gdgsrilanka.org/images/logos/jetbrains-variant-3.svg",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/kirill-shmakov-22069567/"
          }
        ],
        "country": "St. Petersburg, Russia",
        "bio":
            "He has been a member of the JetBrains team since the beginning of 2019. Being part of the Kotlin project, he works on IDE support for Kotlin/Native. Before Jetbrains he was at the geo division at yandex for 6 years, where he supported the backend of Yandex. He worked on Maps with the focus on visual data serving and interaction with the mobile team. His master's degree is in mathematics from SPb SU was accopanied by a two year experience in applied mathematics in a gradute study of McGill University.",
        "badges": [],
        "shortBio":
            "He is a member of the IDE support team for Kotlin in JetBrains",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/kirill_schmakov.jpg?alt=media&token=4883c8aa-d44c-49d4-bcc7-da5dbaa3392c",
        "name": "Kirill Schmakov",
        "companyLogo":
            "https://devfest19.gdgsrilanka.org/images/logos/jetbrains-variant-3.svg",
        "title": "Software Engineer"
      }
    },
    {
      "speaker": "Mithila_Somasiri",
      "details": {
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68",
        "title": "Chief Technology Officer",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Mithila.PNG?alt=media&token=a2c2c9b8-3ae1-4e25-8b11-a881d4690af5",
        "order": 15,
        "featured": true,
        "company": "PickMe Engineering",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/mithila-somasiri-42a00b56"
          }
        ],
        "country": "Colombo , Sri Lanka",
        "bio":
            "Mithila is the Chief Technology Officer (CTO) at PickMe(Digital Mobility Solutions Lanka (PVT) Ltd). He possesses over 15 years of experience in the tech industry managing development and operation of mission critical enterprise applications. Mithila holds a MBA in Business Management from PIM, BSc in Engineering & Computer Science from the University of Moratuwa. ",
        "shortBio":
            "Mithila is the Chief Technology Officer (CTO) at PickMe(Digital Mobility Solutions Lanka (PVT) Ltd). He possesses over 15 years of experience in the tech industry managing development and operation of mission critical enterprise applications.",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Mithila.PNG?alt=media&token=a2c2c9b8-3ae1-4e25-8b11-a881d4690af5",
        "name": "Mithila Somasiri"
      }
    },
    {
      "speaker": "Nilesh_Jayanandana",
      "details": {
        "shortBio":
            "With over 5 years of experience in the industry, Nilesh Jayanandana is one of the lead architects at Platformer Cloud where they are building a Cloud Solution on top of Kubernetes.",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/IMG_8323.jpeg?alt=media&token=8dee2835-f92f-4350-8bc1-a05e22ae6a39",
        "name": "Nilesh Jayanandana",
        "companyLogo":
            "https://platformer.com/_next/static/images/platformer-logo-a74fb790c080232551929c0060e0ae17.svg",
        "title": "Architect",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/IMG_8323.jpeg?alt=media&token=8dee2835-f92f-4350-8bc1-a05e22ae6a39",
        "order": 14,
        "featured": false,
        "company": "Platformer Cloud",
        "companyLogoUrl":
            "https://platformer.com/_next/static/images/platformer-logo-a74fb790c080232551929c0060e0ae17.svg",
        "socials": [
          {
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/nilesh93",
            "name": "LinkedIn"
          }
        ],
        "country": "Colombo , Sri Lanka",
        "bio":
            " With over 5 years of experience in the industry, Nilesh Jayanandana is one of the lead architects at Platformer Cloud where they are building a Cloud Solution on top of Kubernetes. He is the community lead in the Cloud Native Computing Foundation Community Group Kubernetes Sri Lanka and is a public speaker on the topics of Kubernetes, Cloud, Containers and Web Technologies. Graduated with a BSc in Information Technology specializing in Software Engineering from Sri Lanka Institute of Information Technology, he further has achieved the qualifications of Google Cloud Authorized Trainer and Google Cloud Authorized Google Cloud Professional Architect. He loves collaborating with others and sharing his knowledge to help people whenever he can."
      }
    },
    {
      "speaker": "Nipuna_Pathirana",
      "details": {
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Nipuna.jpg?alt=media&token=a2710103-e7df-430a-a6cb-ea38d6261ec0",
        "name": "Nipuna Pathirana",
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68",
        "title": "Software Engineer",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Nipuna.jpg?alt=media&token=a2710103-e7df-430a-a6cb-ea38d6261ec0",
        "order": 18,
        "featured": false,
        "company": "Pick Me",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68",
        "socials": [
          {"icon": "linkedin", "link": "", "name": "LinkedIn"}
        ],
        "country": "Colombo , Sri Lanka",
        "bio": " ",
        "shortBio": ""
      }
    },
    {
      "speaker": "Ramya_Authappan",
      "details": {
        "badges": [],
        "shortBio":
            "Ramya is passionate about building and designing test frameworks. She has around 10 years of experience and is currently enjoying her role as Quality Engineering Manager at Gitlab.",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/headshot.jpg?alt=media&token=aafcaa0e-ffcb-4038-b6ef-655bf48346bf",
        "name": "Ramya Authappan",
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_gitlab-logo-gray-rgb.png?alt=media&token=078a437a-b0df-4f42-ab6f-94c743783023",
        "title": "Engineering Manager",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/headshot.jpg?alt=media&token=aafcaa0e-ffcb-4038-b6ef-655bf48346bf",
        "order": 5,
        "featured": true,
        "company": " Gitlab",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_gitlab-logo-gray-rgb.png?alt=media&token=078a437a-b0df-4f42-ab6f-94c743783023",
        "socials": [
          {
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/ramyaat",
            "name": "LinkedIn"
          }
        ],
        "country": "Chennai,India",
        "bio":
            "Ramya is passionate about building and designing test frameworks. She has around 10 years of experience and is currently enjoying her role as Quality Engineering Manager at Gitlab. Prior to Gitlab, she has worked with PayPal and Amazon. “Simple, but powerful” is her slogan for building test frameworks/tools. She is also the Director of WomenWhoCode, Chennai and helps in organising meetups for the same, encouraging women in technology. When she's not working, you can find her spending time with her kid and hanging out with friends.\n"
      }
    },
    {
      "speaker": "Sajeetharan_Sinnathurai",
      "details": {
        "shortBio":
            "Sajeetharan is a full stack developer with over 8 years of experience.",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfestlk18.appspot.com/o/speakers%2F29025393_10155092599246441_7284857292248571903_n%20-%20Sajeetharan%20Sinnathurai.jpg?alt=media&token=70bf3519-554d-46cf-8ea9-20b030e0d6ce",
        "name": "Sajeetharan Sinnathurai",
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Microsoft-Logo-PNG.png?alt=media&token=48c6415b-2af6-42fc-9635-a3b812d221dd",
        "title": "Cloud Solution Architect",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfestlk18.appspot.com/o/speakers%2F29025393_10155092599246441_7284857292248571903_n%20-%20Sajeetharan%20Sinnathurai.jpg?alt=media&token=70bf3519-554d-46cf-8ea9-20b030e0d6ce",
        "order": 8,
        "featured": false,
        "company": "Microsoft",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Microsoft-Logo-PNG.png?alt=media&token=48c6415b-2af6-42fc-9635-a3b812d221dd",
        "socials": [
          {
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/sajeetharan",
            "name": "LinkedIn"
          }
        ],
        "country": "Colombo , Sri Lanka",
        "bio":
            "With over 8 years of experience in the ICT industry, Sajeetharan Sinnathurai is a full stack developer, an enthusiast in Cloud and Web Development. He currently works at Microsoft as a Technical Evangelist. His skill in Web Application Architecture, Cloud and more has seen him become a Microsoft MVP in Developer Technologies, Google developer expert in Web technology. Sajeetharan is also the top contributor on stack Overflow in Sri Lanka and he ranks among the top 10 contributors in the world on Angular, Cosmos DB, etc. He is also a reviewer on https://www.packtpub.com/ .He now focuses on channeling his knowledge into open source projects and sharing it with the community by mentoring,creating POCS,running workshops,writing blogs to help make the world a better and more developed place.",
        "badges": [
          {
            "name": "gde",
            "description": "Angular Google Developer Expert",
            "link":
                "https://developers.google.com/experts/people/sajeetharan-sinnathurai"
          }
        ]
      }
    },
    {
      "speaker": "Saurabh_Arora",
      "details": {
        "shortBio":
            "Saurabh has been building Android apps for 6 years. Currently a part of the Android team at Viki, Singapore.",
        "photoUrl":
            "https://scontent-sin2-1.xx.fbcdn.net/v/t31.0-1/c420.0.960.960a/p960x960/26170687_10155580504659270_2209297553585625245_o.jpg?_nc_cat=111&_nc_oc=AQlid7Uux8bOgdY5UVeoKEEaxGLIXwYnN-n1HW1iTVtcA5RClb4OsbYiN39vbtdMImQ&_nc_ht=scontent-sin2-1.xx&oh=7bd7c36af4086bf582c979ff732c1efb&oe=5E3414D3",
        "name": "Saurabh Arora",
        "companyLogo":
            "https://images-eu.ssl-images-amazon.com/images/I/41fLQDXrS3L.png",
        "title": "Technology Lead",
        "photo":
            "https://scontent-sin2-1.xx.fbcdn.net/v/t31.0-1/c420.0.960.960a/p960x960/26170687_10155580504659270_2209297553585625245_o.jpg?_nc_cat=111&_nc_oc=AQlid7Uux8bOgdY5UVeoKEEaxGLIXwYnN-n1HW1iTVtcA5RClb4OsbYiN39vbtdMImQ&_nc_ht=scontent-sin2-1.xx&oh=7bd7c36af4086bf582c979ff732c1efb&oe=5E3414D3",
        "order": 10,
        "featured": true,
        "company": "Rakuten Viki",
        "companyLogoUrl":
            "https://images-eu.ssl-images-amazon.com/images/I/41fLQDXrS3L.png",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/company/viki"
          }
        ],
        "country": "singapore",
        "bio":
            "Saurabh has been building Android apps for 6 years. Currently a part of the Android team at Viki, Singapore, he has been instrumental in increasing the capabilities and performance of the Viki app, which has been nominated for Google Play Awards, been an Android Excellence awardee, part of the editor's choice apps and launch partners for Android Go and Instant Apps. He believes that one should not only take from the community but also give back to them and hence shares his learnings through blog posts, open-source projects and talks at local meetups, events, and conferences. Outside of engineering, he is a big tennis and cricket fan.",
        "badges": [
          {
            "name": "gde",
            "description": " Google Developer Expert Android",
            "link":
                "https://developers-dot-devsite-v2-prod.appspot.com/community/experts/directory/profile/profile-saurabh_arora"
          }
        ]
      }
    },
    {
      "speaker": "Shweta_Bhatt",
      "details": {
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/1%20-%20Shweta%20Bhatt.jpg?alt=media&token=868bc1e6-97bb-4127-8ae8-2105f145f0f9",
        "order": 3,
        "featured": true,
        "company": "Youplus",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/google-developers-logo-png-google-developers-daldhaldhaldhalhdlahdlahdlahdlahdlah-800.png?alt=media&token=1dd29559-26bd-473b-8547-185bd4b1af96",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/shweta-bhatt-1a930b12"
          }
        ],
        "country": "Bangalore, India.",
        "bio":
            "Data Scientist, currently working in the AI team at Youplus, a startup based out of Bangalore and headquartered in New York City. She specializes in building a range of machine learning based products mostly within the NLP domain. She holds an undergraduate degree from Birla Institute of Technology and Science, Pilani in Information Systems and a Master's degree from King's College London in Artificial Intelligence. She has previously worked as a Software Developer at Cisco Systems and Apigee (acquired by Google in 2016) before transitioning into her AI career. She also has research experience at King's College London within the NetSys and the Biostatistics & Health Informatics research groups and has a paper - Illuminating and ecosystem of partisan websites published at the Web Conference 2018. Apart from this, she likes to contribute to the ML community by writing tech blogs which have been published in KDnuggets and TowardsDataScience on Medium. She is a mentor at Springboard, an online learning platform, through which she helps aspiring learners get started with their Data Science and AI/ML careers. She is also an AI consultant for a retail startup called SprintAI. Her interests within AI include Natural Language Processing, Deep Learning, Reinforcement Learning and Game Theory.",
        "badges": [
          {
            "name": "gde",
            "description": "Machine Learning Google Developer Expert",
            "link": ""
          }
        ],
        "shortBio":
            "Data Scientist, currently working in the AI team at Youplus, a startup based out of Bangalore and headquartered in New York City. She specializes in building a range of machine learning based products mostly within the NLP domain.",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/1%20-%20Shweta%20Bhatt.jpg?alt=media&token=868bc1e6-97bb-4127-8ae8-2105f145f0f9",
        "name": "Shweta Bhatt",
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/google-developers-logo-png-google-developers-daldhaldhaldhalhdlahdlahdlahdlahdlah-800.png?alt=media&token=1dd29559-26bd-473b-8547-185bd4b1af96",
        "title": "Data Scientist"
      }
    },
    {
      "speaker": "Siddhant_Agarwal",
      "details": {
        "company": "Google",
        "companyLogoUrl": "../images/logos/google.svg",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/siddhantagarwal"
          }
        ],
        "country": "India",
        "bio":
            "He lead Google Developer Expert Program and Broader Developer Communities Program as part of Google Developer Relations team in India. His roles include:\n- Identify, work closely and build relationship with 45+ Google Developer Experts in India.\n- Working closely with internal stakeholders and Product Area POCs involved in running the program.\n- Deliver trainings, sessions at Google Developers led or 3rd party conferences.\n- Identify, work closely and build relationship with other third party communities in India.\n- Establish relationship between 1P Developer communities (40+ GDG and GDG Cloud communities in India) and 3P communities in India.\n- Leading strategic efforts towards Build for Digital India Program to enable student entrepreneurs and student developers \"Solve for India\"\n- Working closely with various Product Areas POCs and developers in the region to understand the state of technology/product area in India",
        "badges": [
          {
            "link": "https://www.linkedin.com/in/siddhantagarwal",
            "name": "google",
            "description": "Program Coordinator, Google Developer Relations"
          }
        ],
        "shortBio":
            "He lead Google Developer Expert Program and Broader Developer Communities Program as part of Google Developer Relations team in India.",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/1.jpg?alt=media&token=d85429d8-156b-424d-98fa-3883711c84f0",
        "name": "Siddhant Agarwal",
        "companyLogo": "../images/logos/google.svg",
        "title": "Program Coordinator, Google Developer Relations",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/1.jpg?alt=media&token=d85429d8-156b-424d-98fa-3883711c84f0",
        "order": 1,
        "featured": true
      }
    },
    {
      "speaker": "Srimal_Nishantha",
      "details": {
        "shortBio": "",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Srimal.jpg?alt=media&token=7b760d90-173c-4277-bd96-2b76e14c3cd8",
        "name": "Srimal Nishantha",
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68",
        "title": "Senior Software Engineer",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Srimal.jpg?alt=media&token=7b760d90-173c-4277-bd96-2b76e14c3cd8",
        "order": 17,
        "featured": false,
        "company": "Pick Me",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68",
        "socials": [
          {"icon": "linkedin", "link": "", "name": "LinkedIn"}
        ],
        "country": "Colombo , Sri Lanka",
        "bio": " "
      }
    },
    {
      "speaker": "Vaibhavi_Desai",
      "details": {
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/VB.jpeg?alt=media&token=857aa7de-7e74-404f-b2ff-0bb1ecff3992",
        "order": 2,
        "featured": true,
        "company": "Google",
        "companyLogoUrl": "../images/logos/google.svg",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/vaibhavihdesai"
          }
        ],
        "country": "Singapore",
        "bio":
            "Vaibhavi leads the Machine Learning and Women Techmakers programs as a part of Google's DevRel team in Southeast Asia.",
        "badges": [
          {
            "name": "google",
            "description": "DevRel Programs Specialist, Southeast Asia",
            "link": ""
          }
        ],
        "shortBio":
            "Vaibhavi leads the Machine Learning and Women Techmakers programs as a part of Google's DevRel team in Southeast Asia",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/VB.jpeg?alt=media&token=857aa7de-7e74-404f-b2ff-0bb1ecff3992",
        "name": "Vaibhavi Desai",
        "companyLogo": "../images/logos/google.svg",
        "title": "DevRel Programs Specialist, Southeast Asia"
      }
    },
    {
      "speaker": "Vrijraj_Singh",
      "details": {
        "shortBio":
            "He Is Google Developers Expert for Web Technologies and Community Organizer of GDG Jalandhar(Punjab, India).",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/vijay.jpg?alt=media&token=970ad00d-29a0-4ed1-bed0-8087cf96ae0e",
        "name": "Vrijraj Singh",
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/google-developers-logo-png-google-developers-daldhaldhaldhalhdlahdlahdlahdlahdlah-800.png?alt=media&token=1dd29559-26bd-473b-8547-185bd4b1af96",
        "title": "Web Technologies Google Developers Expert",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/vijay.jpg?alt=media&token=970ad00d-29a0-4ed1-bed0-8087cf96ae0e",
        "order": 12,
        "featured": false,
        "company": "",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/google-developers-logo-png-google-developers-daldhaldhaldhalhdlahdlahdlahdlahdlah-800.png?alt=media&token=1dd29559-26bd-473b-8547-185bd4b1af96",
        "socials": [
          {
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/vrijraj",
            "name": "LinkedIn"
          }
        ],
        "country": "Punjab, India",
        "bio":
            "He Is Google Developers Expert for Web Technologies and Community Organizer of GDG Jalandhar(Punjab, India). I've deliver lots of talks, sessions and workshops,and also i've developed Aura App for GDGx community management website.",
        "badges": [
          {
            "link": "",
            "name": "gde",
            "description": "Web Technologies Google Developers Expert"
          }
        ]
      }
    },
    {
      "speaker": "Wishwa_Prasad ",
      "details": {
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Wishwa.jpg?alt=media&token=cdcac49d-62b5-4224-8f2c-834caedcfdb8",
        "name": "Wishwa Prasad Perera",
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68",
        "title": "Software Engineer",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/Wishwa.jpg?alt=media&token=cdcac49d-62b5-4224-8f2c-834caedcfdb8",
        "order": 20,
        "featured": false,
        "company": "Pick Me",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/rsz_pickme_engineering_logo.png?alt=media&token=8fb2f2a6-2bd3-4ac6-96cc-883248e20c68",
        "socials": [
          {"icon": "linkedin", "link": "", "name": "LinkedIn"}
        ],
        "country": "Colombo , Sri Lanka",
        "bio": " ",
        "shortBio": ""
      }
    },
    {
      "speaker": "keshan_sodimana",
      "details": {
        "companyLogo":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/google-developers-logo-png-google-developers-daldhaldhaldhalhdlahdlahdlahdlahdlah-800.png?alt=media&token=1dd29559-26bd-473b-8547-185bd4b1af96",
        "title": "GDE Machine Learning",
        "photo":
            "https://firebasestorage.googleapis.com/v0/b/devfestlk18.appspot.com/o/pre_speakers%2F1901173_10203074120595094_1450286311_n.jpg?alt=media&token=aad38900-f8e7-4f71-9bca-f9c64157c75c",
        "order": 7,
        "featured": false,
        "company": "Open Data",
        "companyLogoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfest2019-e86e2.appspot.com/o/google-developers-logo-png-google-developers-daldhaldhaldhalhdlahdlahdlahdlahdlah-800.png?alt=media&token=1dd29559-26bd-473b-8547-185bd4b1af96",
        "socials": [
          {
            "name": "LinkedIn",
            "icon": "linkedin",
            "link": "https://www.linkedin.com/in/keshan"
          }
        ],
        "country": "Sri Lanka",
        "bio":
            "Keshan is the former country engineering consultant for Google Sri Lanka. Keshan was the GDG lead and founder for GDG Sri Lanka. Before joining Google, he was a Software Developer for IFS, and he is a co-founder of Siyomek Holdings",
        "badges": [
          {
            "link": "",
            "name": "gde",
            "description": "Machine Learning Google Developer Expert"
          }
        ],
        "shortBio":
            "Keshan is the former country engineering consultant for Google for Sri Lanka. Keshan was the GDG lead and founder for GDG Sri Lanka. Before joining Google, he was a Software Developer for IFS, and he is a co-founder of Siyomek Holdings",
        "photoUrl":
            "https://firebasestorage.googleapis.com/v0/b/devfestlk18.appspot.com/o/pre_speakers%2F1901173_10203074120595094_1450286311_n.jpg?alt=media&token=aad38900-f8e7-4f71-9bca-f9c64157c75c",
        "name": "Keshan Sodimana"
      }
    }
  ];
}
