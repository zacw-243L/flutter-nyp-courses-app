import 'dart:collection';
import 'package:flutter/foundation.dart';
import '../models/course.dart';
import 'package:flutter/material.dart';

class CoursesRepository extends ChangeNotifier {
  UnmodifiableListView<Course> get allCourses {
    return UnmodifiableListView(_allCourses);
  }

  int get allCoursesCount {
    return _allCourses.length;
  }

  List<Course> _favCourses = [];

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
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/common-engineering-programme/hero-banner/common-engineering-programm.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Want to do Engineering but do not know which diploma to choose? Enrol into Common Engineering Programme! Enjoy the vibrant poly learning environment and familiarise yourself with various engineering disciplines. Take one year to immerse yourself in the world of engineering, then choose from 9 engineering diplomas designed to cater to your aspiration. You would be able to pursue your dream career and explore vast opportunities in engineering. The Programme runs for one year and will introduce you to various engineering disciplines. It gives you the opportunity to get familiarised with our polytechnic environment and be exposed to the various aspects of engineering so that you could make a well informed choice of the diploma course.',
      youtube: 'https://www.youtube.com/watch?v=yUq5s_mB_b0',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/common-engineering-programme.html',
      tileColor: Colors.orange, // Set the tile color to blue
    ),
    Course(
      code: 'C31',
      title: 'AI & Data Engineering',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/dip-in-ai-n-data-engineering/dade_herobanner.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Everything is connected to the internet – it could be the heart rate collected from our smart watch, or the efficiency of the engine that powers the plane we fly in. The devices we use daily generate data, which provides experts with insights to help save lives. For example, doctors can monitor a patient’s health to predict a heart attack, and engineers can predict performance issues in the engines. Have you ever wondered how all this data is processed and translated into insights? Artificial Intelligence (AI) transforms how traditional engineering industries operate. Data is collected from these different sources, like Internet of Things (IoT) sensors, smart devices and on board machine systems. Then, AI solutions are built to process the data, remove repetitive manual work, automate processes, predict preventive actions and more. ',
      youtube:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/dip-in-ai-n-data-engineering/C31_ADE_Course%20Marketing_2022.mp4',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/ai-and-data-engineering.html',
      tileColor: Colors.red, // Set the tile color to blue
    ),
    Course(
      code: 'C62',
      title: 'Advanced & Digital Manufacturing',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-digital-and-precision-engineering-with-scholarship/hero-banner/seg-advanced-digital-manufacturing-edited.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Do you love accuracy and attention to the tiny details? Do you wonder how digitalization is enabling reinvention of manufacturing and how machine learning and artificial intelligence are making manufacturing smart? Are you also interested in creating innovative solutions – like cutting-edge medical tools or precision aircraft parts?  Then our Diploma in Advanced & Digital Manufacturing is for you. Learn about precision engineering, additive manufacturing, Industry 4.0, digital design and manufacturing, equipment design, engineering processes and process control. The training you receive in this course will help you in research and development, data analyses, prototype-making, digitalization and manufacturing. Your skills will be highly valued in important industries, including precision industries, biomedical manufacturing, aerospace manufacturing and additive manufacturing.',
      youtube: 'https://www.youtube.com/watch?v=-zJlpT9pT_I',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/advanced-and-digital-manufacturing.html',
      tileColor: Colors.green,
    ),
    Course(
      code: 'C51',
      title: 'Aeronautical & Aerospace Technology',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-aeronautical-and-aerospace-technology/hero-banner/seg-aeronautical-aerospace-tech-edited.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Are you fascinated by how airplanes fly? Do you wonder how a jet engine works, and can propel a plane to supersonic speed? Then our Diploma in Aeronautical & Aerospace Technology is your ticket to an exciting career in the aerospace industry. Build a strong foundation in engineering fundamentals, gain knowledge of aircraft systems and their operating principles, and pick up best practices in the maintenance, repair & overhaul (MRO) and aerospace manufacturing industries. Our course integrates theory, practical and experimental learning so that you are skilled in areas such as aerospace engineering and materials, design manufacturing and analysis, and quality system. Plus, our curriculum follows industry standards set by the Civil Aviation Authority of Singapore (CAAS), so you will be eligible to pursue an aircraft maintenance licence after graduation.',
      youtube: 'https://www.youtube.com/watch?v=ildHr3piPxE',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/aeronautical-and-aerospace-technology.html',
      tileColor: Colors.yellow,
    ),
    Course(
      code: 'C52',
      title: 'Aerospace Systems & Management',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-aerospace-systems-and-management/hero-banner/seg-aerospace-system-management-1.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Are you amazed by the advanced systems on a modern airplane, from the cockpit avionics systems to the in-flight entertainment system? Eager to work on these systems or see yourself taking on a management role in the aerospace industry? Get ready for an exciting career as our Diploma in Aerospace Systems and Management equips you with expertise in aerospace avionics systems and aviation management & services. Besides learning about state-of-the-art aerospace systems, you will also study how world-class airports are run, and gain valuable experience through internships at well-known aerospace companies. This will prepare you for many engineering and management roles in aviation, including becoming a licensed aircraft engineer. What’s more, you will also have the opportunity to further your studies in both local and international universities.',
      youtube: 'https://www.youtube.com/watch?v=dlzxDmhkaww',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/aerospace-systems-and-management.html',
      tileColor: Colors.pink,
    ),
    Course(
      code: 'C71',
      title: 'Biomedical Engineering',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-biomedical-engineering/hero-banner/seg-biomedical-engineering.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Does the life-saving work of doctors and healthcare professionals inspire you? Do you wish to help them do their work better? Then our Diploma in Biomedical Engineering gives you the skills to design, develop and produce medical devices and instruments for the ever-evolving medical technology and healthcare industries. Gain good grounding in the basics, then choose to specialise in biomedical device technology, quality system and regulatory compliance or biomedical design and manufacturing technology.',
      youtube: 'https://www.youtube.com/watch?v=Je2Hz08dDpc',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/biomedical-engineering.html',
      tileColor: Colors.lightGreenAccent,
    ),
    Course(
      code: 'C89',
      title: 'Electronic & Computer Engineering',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-electronic-systems/dece-hero-banner-1.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Do you want to be in the driver’s seat as the array of advanced technologies revolutionise our world, connecting people and empowering devices? From smartphones to intelligent autonomous vehicles, electronics is increasingly everywhere, connecting us all, shaping our future and enriching our lives. NYP’s Diploma in ECE gives you wide knowledge in the theory and practice of electronics and computing. It allows you to thrive in high-growth industries and sectors such as electronics, Infocomm, semiconductor, telecommunications and Internet of Things.',
      youtube: 'https://www.youtube.com/watch?v=FPH15zE7cBg',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/electronic-computer-engineering.html',
      tileColor: Colors.blue,
    ),
    Course(
      code: 'C41',
      title: 'Engineering with Business',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-engineering-with-business/hero-banner/seg-engineering-business-1.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Are you an inventor at heart? Do you see yourself starting your own technology business? Our Diploma in Engineering with Business marries engineering and business concepts. You’ll learn a wide range of subjects, including engineering technology, business analytics and planning and project and operations management.',
      youtube: 'https://www.youtube.com/watch?v=ZJN3ss088wI',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/engineering-with-business.html',
      tileColor: Colors.greenAccent,
    ),
    Course(
      code: 'C75',
      title: 'Infocomm & Media Engineering',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-multimedia-and-infocomm-technology/hero-banner/infocomm-and-media-engineering.JPG/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Do you want to be part of Singapore’s smart nation drive? From new-generation web applications to digital infotainment, infocomm and media (ICM) is quickly transforming the nation. Our Diploma in Infocomm & Media Engineering will gear you up to be a leader in this exciting world. Whether it’s developing innovative software applications, creating creative & UX-centric media designs or deploying/securing critical apps on cloud infrastructures, there are plenty of opportunities for you to contribute in this area.',
      youtube: 'https://www.youtube.com/watch?v=GBh_ifyoZOw',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/infocomm-and-media-engineering.html',
      tileColor: Colors.lightBlue,
    ),
    Course(
      code: 'C50',
      title: 'Nanotechnology & Materials Science',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-nanotechnology-and-materials-science/hero-banner/seg-nanotech-materials-science-1.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Do you want to make big waves with the “science of small”? Nanotechnology is one of the most important technologies today, creating solutions that are cheaper, faster, smaller and stronger, with applications in almost every aspect of our lives. With our Diploma in Nanotechnology & Materials Science course, you can be at the forefront of this leading technology. Gain a strong foundation in producing advanced materials, such as polymers and ceramics, to create smart products for an ever-changing world. Your knowledge in both nanotechnology and materials science will open you to diverse career opportunities in high-growth industry sectors, including healthcare, electronics and renewable energy.',
      youtube: 'https://www.youtube.com/watch?v=cbYLA_lGIxI',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/nanotechnology-and-materials-science.html',
      tileColor: Colors.lime,
    ),
    Course(
      code: 'C87',
      title: 'Robotics & Mechatronics',
      imageUrl:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-robotics-mechatronics/robotics-and-mechatronics.jpg/_jcr_content/renditions/cq5dam.web.1280.1280.jpeg',
      description:
          'Do you love robots? Enjoy putting things together by hand? If your answer is yes, then you should take up our Diploma in Robotics & Mechatronics course, which combines mechanical, electronics and computing engineering. Learn how to build your own robots and gadgets as you pick up the basics of engineering and programming. Plus, you can choose to specialise in areas such as automation and robotics, wafer fabrication, aerospace or biomedical engineering.',
      youtube:
          'https://www.nyp.edu.sg/content/dam/nyp/schools-course/seg/full-time-courses/diploma-in-robotics-mechatronics/drm-video.mp4',
      website:
          'https://www.nyp.edu.sg/schools/seg/full-time-courses/robotics-and-mechatronics.html',
      tileColor: Colors.redAccent,
    ),
  ];
}
