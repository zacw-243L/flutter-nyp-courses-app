import 'dart:collection';
import '../models/course.dart';
import 'package:flutter/material.dart';

class CoursesRepository extends ChangeNotifier {
  UnmodifiableListView<Course> get allCourses {
    return UnmodifiableListView(_allCourses);
  }

  int get allCoursesCount {
    return _allCourses.length;
  }

  final List<Course> _favCourses = [];

  UnmodifiableListView<Course> get favCourses {
    return UnmodifiableListView(_favCourses);
  }

  int get favCoursesCount {
    return _favCourses.length;
  }

  void updateCourse(Course course) {
    course.toggleFav();
    course.isFav ? _favCourses.add(course) : _favCourses.remove(course);
    notifyListeners();
  }

  final List<Course> _allCourses = [
    Course(
      code: 'C42',
      title: 'Common Engineering Programme',
      imageUrl: const NetworkImage(
          'https://www.nyp.edu.sg/content/dam/nypcorp/sg/en/student/study-at-nyp/school/school-of-engineering/seg-course-thumbnail-cep.jpg'),
      description:
          'Want to do Engineering but do not know which diploma to choose? Enrol into Common Engineering Programme! Enjoy the vibrant poly learning environment and familiarise yourself with various engineering disciplines. Take one year to immerse yourself in the world of engineering, then choose from 9 engineering diplomas designed to cater to your aspiration. You would be able to pursue your dream career and explore vast opportunities in engineering. The Programme runs for one year and will introduce you to various engineering disciplines. It gives you the opportunity to get familiarised with our polytechnic environment and be exposed to the various aspects of engineering so that you could make a well informed choice of the diploma course.',
      youtube: 'https://www.youtube.com/watch?v=yUq5s_mB_b0',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/common-engineering-programme',
      tileColor: Colors.white, // Set the tile color to blue
    ),
    Course(
      code: 'C31',
      title: 'AI & Data Engineering',
      imageUrl: const NetworkImage(
          'https://www.nyp.edu.sg/content/dam/nypcorp/sg/en/student/study-at-nyp/school/school-of-engineering/seg-course-thumbnail-ade.jpg'),
      description:
          'Everything is connected to the internet – it could be the heart rate collected from our smart watch, or the efficiency of the engine that powers the plane we fly in. The devices we use daily generate data, which provides experts with insights to help save lives. For example, doctors can monitor a patient’s health to predict a heart attack, and engineers can predict performance issues in the engines. Have you ever wondered how all this data is processed and translated into insights? Artificial Intelligence (AI) transforms how traditional engineering industries operate. Data is collected from these different sources, like Internet of Things (IoT) sensors, smart devices and on board machine systems. Then, AI solutions are built to process the data, remove repetitive manual work, automate processes, predict preventive actions and more. ',
      youtube: 'https://www.youtube.com/watch?v=yxXRsNPN-f0',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/diploma-AI-data-engineering',
      tileColor: Colors.white70, // Set the tile color to blue
    ),
    Course(
      code: 'C62',
      title: 'Advanced & Digital Manufacturing',
      imageUrl: const NetworkImage(
          'https://www.nyp.edu.sg/content/dam/nypcorp/sg/en/student/study-at-nyp/school/school-of-engineering/seg-course-thumbnail-adm.jpg'),
      description:
          'Do you love accuracy and attention to the tiny details? Do you wonder how digitalization is enabling reinvention of manufacturing and how machine learning and artificial intelligence are making manufacturing smart? Are you also interested in creating innovative solutions – like cutting-edge medical tools or precision aircraft parts?  Then our Diploma in Advanced & Digital Manufacturing is for you. Learn about precision engineering, additive manufacturing, Industry 4.0, digital design and manufacturing, equipment design, engineering processes and process control. The training you receive in this course will help you in research and development, data analyses, prototype-making, digitalization and manufacturing. Your skills will be highly valued in important industries, including precision industries, biomedical manufacturing, aerospace manufacturing and additive manufacturing.',
      youtube: 'https://www.youtube.com/watch?v=-zJlpT9pT_I',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/diploma-advanced-digital-manufacturing',
      tileColor: Colors.white,
    ),
    Course(
      code: 'C26',
      title: 'Aerospace Engineering',
      imageUrl: const AssetImage('images/404notfound.png'),
      description:
          'Fuel your passion for aviation and push the boundaries of what is possible. Acquire both the theoretical knowledge and practical skills needed to thrive in diverse roles in aircraft design, production, inspection, and more. With this revamped diploma, join the industry in shaping a more sustainable and technologically advanced aerospace sector.',
      youtube: 'https://www.youtube.com/watch?v=ildHr3piPxE',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/diploma-aerospace-engineering',
      tileColor: Colors.white70,
    ),
    Course(
      code: 'C52',
      title: 'Aerospace Systems & Management',
      imageUrl: const AssetImage('images/404notfound.png'),
      description:
          'Are you amazed by the advanced systems on a modern airplane, from the cockpit avionics systems to the in-flight entertainment system? Eager to work on these systems or see yourself taking on a management role in the aerospace industry? Get ready for an exciting career as our Diploma in Aerospace Systems and Management equips you with expertise in aerospace avionics systems and aviation management & services. Besides learning about state-of-the-art aerospace systems, you will also study how world-class airports are run, and gain valuable experience through internships at well-known aerospace companies. This will prepare you for many engineering and management roles in aviation, including becoming a licensed aircraft engineer. What’s more, you will also have the opportunity to further your studies in both local and international universities.',
      youtube: 'https://www.youtube.com/watch?v=dlzxDmhkaww',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/aerospace-systems-and-management.html',
      tileColor: Colors.white,
    ),
    Course(
      code: 'C71',
      title: 'Biomedical Engineering',
      imageUrl: const NetworkImage(
          'https://www.nyp.edu.sg/content/dam/nypcorp/sg/en/student/study-at-nyp/school/school-of-engineering/seg-course-thumbnail-bme.jpg'),
      description:
          'Does the life-saving work of doctors and healthcare professionals inspire you? Do you wish to help them do their work better? Then our Diploma in Biomedical Engineering gives you the skills to design, develop and produce medical devices and instruments for the ever-evolving medical technology and healthcare industries. Gain good grounding in the basics, then choose to specialise in biomedical device technology, quality system and regulatory compliance or biomedical design and manufacturing technology.',
      youtube: 'https://www.youtube.com/watch?v=Je2Hz08dDpc',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/diploma-biomedical-engineering',
      tileColor: Colors.white70,
    ),
    Course(
      code: 'C89',
      title: 'Electronic & Computer Engineering',
      imageUrl: const NetworkImage(
          'https://www.nyp.edu.sg/content/dam/nypcorp/sg/en/student/study-at-nyp/school/school-of-engineering/seg-course-thumbnail-ece.jpg'),
      description:
          'Do you want to be in the driver’s seat as the array of advanced technologies revolutionise our world, connecting people and empowering devices? From smartphones to intelligent autonomous vehicles, electronics is increasingly everywhere, connecting us all, shaping our future and enriching our lives. NYP’s Diploma in ECE gives you wide knowledge in the theory and practice of electronics and computing. It allows you to thrive in high-growth industries and sectors such as electronics, Infocomm, semiconductor, telecommunications and Internet of Things.',
      youtube: 'https://www.youtube.com/watch?v=FPH15zE7cBg',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/diploma-electronic-computer-engineering',
      tileColor: Colors.white,
    ),
    Course(
      code: 'C41',
      title: 'Sustainability in Engineering with Business',
      imageUrl: const AssetImage('images/404notfound.png'),
      description:
          'Sustainability challenges demand a multifaceted response. Build your foundation across three key domains – engineering, business operations, and advanced technologies – and learn to implement sustainable solutions across diverse sectors.',
      youtube: 'https://www.youtube.com/watch?v=ZJN3ss088wI',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/diploma-sustainability-engineering-business',
      tileColor: Colors.white70,
    ),
    Course(
      code: 'C75',
      title: 'Infocomm & Media Engineering',
      imageUrl: const NetworkImage(
          'https://www.nyp.edu.sg/content/dam/nypcorp/sg/en/student/study-at-nyp/school/school-of-engineering/course-thumbnail-ime.jpg'),
      description:
          'Do you want to be part of Singapore’s smart nation drive? From new-generation web applications to digital infotainment, infocomm and media (ICM) is quickly transforming the nation. Our Diploma in Infocomm & Media Engineering will gear you up to be a leader in this exciting world. Whether it’s developing innovative software applications, creating creative & UX-centric media designs or deploying/securing critical apps on cloud infrastructures, there are plenty of opportunities for you to contribute in this area.',
      youtube: 'https://www.youtube.com/watch?v=GBh_ifyoZOw',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/diploma-infocomm-media-engineering',
      tileColor: Colors.white,
    ),
    Course(
      code: 'C50',
      title: 'Nanotechnology & Materials Science',
      imageUrl: const AssetImage('images/404notfound.png'),
      description:
          'Do you want to make big waves with the “science of small”? Nanotechnology is one of the most important technologies today, creating solutions that are cheaper, faster, smaller and stronger, with applications in almost every aspect of our lives. With our Diploma in Nanotechnology & Materials Science course, you can be at the forefront of this leading technology. Gain a strong foundation in producing advanced materials, such as polymers and ceramics, to create smart products for an ever-changing world. Your knowledge in both nanotechnology and materials science will open you to diverse career opportunities in high-growth industry sectors, including healthcare, electronics and renewable energy.',
      youtube: 'https://www.youtube.com/watch?v=cbYLA_lGIxI',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/nanotechnology-and-materials-science',
      tileColor: Colors.white70,
    ),
    Course(
      code: 'C87',
      title: 'Robotics & Mechatronics',
      imageUrl: const NetworkImage(
          'https://www.nyp.edu.sg/content/dam/nypcorp/sg/en/student/study-at-nyp/school/school-of-engineering/course-thumbnail-rm.jpg'),
      description:
          'Do you love robots? Enjoy putting things together by hand? If your answer is yes, then you should take up our Diploma in Robotics & Mechatronics course, which combines mechanical, electronics and computing engineering. Learn how to build your own robots and gadgets as you pick up the basics of engineering and programming. Plus, you can choose to specialise in areas such as automation and robotics, wafer fabrication, aerospace or biomedical engineering.',
      youtube: 'https://www.youtube.com/watch?v=7RVzVH1tSu8',
      website:
          'https://www.nyp.edu.sg/student/study/schools/engineering/diploma-robotics-mechatronics',
      tileColor: Colors.white,
    ),
  ];
}
