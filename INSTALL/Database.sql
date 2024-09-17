-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 12:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PAKTECHSOL`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updated_at`) VALUES
(1, 'Ali', 'mustafvi', '2024-07-13 11:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_title` varchar(300) NOT NULL,
  `blog_desc` varchar(1000) NOT NULL,
  `blog_detail` varchar(20000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- Insert data into the `blog` table
INSERT INTO `blog` (`id`, `blog_title`, `blog_desc`, `blog_detail`, `ufile`, `updated_at`) VALUES
(1, 'Transforming Ideas into Reality: The Power of App Development Services', 'Explore how app development services can turn your innovative ideas into fully functional mobile applications. Understand the process and benefits of developing apps that resonate with users.', 'In a mobile-first world, app development services are crucial for creating applications that meet user needs and drive engagement. From concept to deployment, effective app development can turn your vision into a reality.

Why App Development is Crucial

- **Market Reach:** Mobile apps provide direct access to a global audience and can enhance customer engagement.
- **User Convenience:** Apps offer users convenient access to services and features, improving their overall experience.
- **Competitive Edge:** A well-developed app can set you apart from competitors and provide unique value to your users.

Stages of Successful App Development

- **Idea Validation:** Start with validating your app idea through market research and user feedback.
- **Design and Prototyping:** Create wireframes and prototypes to visualize the app’s functionality and design.
- **Development and Testing:** Build and rigorously test the app to ensure it performs well and is free of bugs.', '', NOW()),

(2, 'Building the Future: How Web Development Shapes Modern Digital Experiences', 'Discover how web development services can transform your online presence. Learn about the latest trends and technologies in web development that drive engagement and functionality.', 'In the digital age, a strong web presence is essential for any business. Web development services are at the heart of creating functional, responsive, and visually appealing websites that attract and retain users.

The Importance of Web Development

- **Performance:** A well-developed website ensures fast loading times and smooth interactions, keeping users engaged.
- **Responsiveness:** With mobile traffic on the rise, responsive design ensures your website looks and functions perfectly on all devices.
- **SEO-Friendly:** Effective web development incorporates SEO best practices to improve search engine rankings and drive organic traffic.

Key Elements of Successful Web Development

- **User Experience (UX):** Focus on creating a seamless and enjoyable user experience through intuitive navigation and clear content structure.
- **Design and Aesthetics:** Develop a visually appealing website that aligns with your brand’s identity and engages visitors.
- **Security:** Implement robust security measures to protect your site and user data from potential threats.', '60936059d354562031616499540.png', NOW());
-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `xfile` varchar(1000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `xfile`, `ufile`, `updated_at`) VALUES
(1, 'paktechsol.png', 'paktechsol.png', NOW());

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `port_title` varchar(500) NOT NULL,
  `port_desc` varchar(1000) NOT NULL,
  `port_detail` varchar(2000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `port_title`, `port_desc`, `port_detail`, `ufile`, `updated_at`) VALUES
(3, 'App Development', 'At Pak Tech Sol, we create tailored, high-performance mobile apps with seamless design and advanced technology integration to meet your business needs.', 'At Pak Tech Sol, we specialize in developing mobile apps that deliver top performance, tailored to your specific business needs. Our team is experienced in creating both native and cross-platform apps for Android and iOS, ensuring intuitive UI/UX design, smooth functionality, and the incorporation of cutting-edge technologies like AI and IoT. We manage every stage of the process, from planning and prototyping to development and rigorous testing.
Beyond app creation, we offer ongoing maintenance and updates to ensure your app stays competitive and up-to-date with the latest technological advancements. Our agile development approach ensures flexibility, timely delivery, and constant client collaboration, helping you achieve your goals efficiently. ', '926070de04f0-df57-11ec-85a8-bda8f2c6ca77-rimg-w720-h720-gmir.jpg', NOW());

-- --------------------------------------------------------
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `bio` varchar(2000) NOT NULL,
  `profile_picture` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `position`, `bio`, `profile_picture`, `updated_at`) VALUES
(1, 'Muhammad Ali', 'Founder & CEO', 'Muhammad Ali is the Founder and CEO of Pak Tech Sol, where he leads the company with a vision to deliver innovative, high-quality software solutions. With a background in Software Engineering and hands-on experience in areas like app development, AI, and cutting-edge technology integration, Muhammad Ali has built a dynamic team dedicated to solving real-world challenges through custom digital solutions. His leadership focuses on fostering collaboration, driving technological innovation, and helping businesses leverage the power of technology to thrive in a fast-evolving digital landscape.', 'ali.png', NOW());

--
-- Table structure for table `section_title`
--

CREATE TABLE `section_title` (
  `id` int(11) NOT NULL,
  `about_title` varchar(500) NOT NULL,
  `about_text` varchar(1000) NOT NULL,
  `why_title` varchar(500) NOT NULL,
  `why_text` varchar(1000) NOT NULL,
  `service_title` varchar(500) NOT NULL,
  `service_text` varchar(1000) NOT NULL,
  `port_title` varchar(500) NOT NULL,
  `port_text` varchar(1000) NOT NULL,
  `test_title` varchar(500) NOT NULL,
  `test_text` varchar(1000) NOT NULL,
  `contact_title` varchar(500) NOT NULL,
  `contact_text` varchar(1000) NOT NULL,
  `enquiry_title` varchar(500) NOT NULL,
  `enquiry_text` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section_title`
--

INSERT INTO `section_title` (`id`, `about_title`, `about_text`, `why_title`, `why_text`, `service_title`, `service_text`, `port_title`, `port_text`, `test_title`, `test_text`, `contact_title`, `contact_text`, `enquiry_title`, `enquiry_text`) VALUES
(1, 'We provides solutions that grow your business.', 'At Pak Tech Sol, we believe in building long-lasting relationships with our clients. Our focus is on understanding your unique challenges and providing customized solutions that deliver tangible results. We are committed to exceeding your expectations and helping your business thrive.', 
    'Smarter solutions, simpler processes.', 'Experience the power of Pak Tech Sol`s smarter solutions. Our tailored software applications are designed to automate tasks, reduce errors, and optimize your workflows, allowing you to focus on what truly matters', 
    'We provide the best digital services', 'Pak Tech Sol is your trusted partner for cutting-edge digital solutions. We offer a comprehensive range of services designed to help your business thrive in the digital age. From website development and mobile app creation to digital marketing and e-commerce solutions, our team of experts delivers innovative and effective strategies tailored to your unique needs.',
    'Our Recent Works', 'Our recent projects showcase our ability to deliver innovative digital solutions that drive business growth. From developing cutting-edge e-commerce platforms to creating engaging mobile apps, our team has successfully tackled a diverse range of challenges. Explore our portfolio to see how we’ve helped businesses like yours achieve their goals.', 
    'Our clients says', 'Hear from our satisfied clients about their experiences working with Pak Tech Sol. Our commitment to delivering exceptional service and innovative solutions has earned us the trust of businesses across various industries. Discover how our partnership has helped them achieve their goals and drive growth.', 
    'Let\`s connect!', 'Ready to take your business to the next level? Contact us today to discuss your project and learn how our digital solutions can help you achieve your goals. Let`s connect and explore the possibilities together.', 
    'Looking For The Best Solution Tech For Your Bussiness? ','Have questions or need more information? Feel free to reach out to our team. We`re here to assist you and provide personalized solutions tailored to your specific needs. Contact us today for a consultation.');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `service_title` varchar(500) NOT NULL,
  `service_desc` varchar(1000) NOT NULL,
  `service_detail` varchar(2000) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `upadated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_title`, `service_desc`, `service_detail`, `ufile`, `upadated_at`) VALUES
(2, 'Web Development', 
          'At Pak Tech Sol, we build responsive, user-friendly websites tailored to drive engagement and optimize performance for businesses.', 
          'At Pak Tech Sol, we deliver bespoke web development services designed to create engaging, high-performance websites that align with your business goals. Our team specializes in developing responsive, user-centric websites that enhance user experience and drive conversions. We employ the latest technologies and best practices to ensure your website is fast, secure, and optimized for all devices.
                    Our web development process encompasses everything from initial concept and design to full-scale development and post-launch support. We work closely with clients to understand their needs, delivering tailored solutions that not only look great but also perform exceptionally well, helping you stand out in the digital space.',
          '5645portrait-happy-young-black-woman-posing-office_116547-21539.webp', 
          NOW()),
(3, 'App Development', 
          'We create high-performance, custom mobile apps with seamless design and functionality, ensuring a superior user experience across platforms.',
          'At Pak Tech Sol, we excel in crafting custom mobile apps that provide seamless experiences on both Android and iOS platforms. Our development process is focused on delivering high-performance apps with intuitive user interfaces and robust functionality. We integrate the latest technologies to ensure your app is scalable, secure, and equipped with advanced features that meet your business objectives.
                  From initial ideation and design to development and ongoing support, we manage every aspect of the app development lifecycle. Our team is dedicated to creating solutions that drive engagement and offer a superior user experience, ensuring your app stands out in the competitive market.', 
          '9668788-7884680_hero-headshot-sitting-hd-png-download.jpg', 
          NOW()),
(4, 'Data Analytics', 
          'Our data analytics services transform raw data into actionable insights, helping businesses make informed decisions and optimize performance.',
          'At Pak Tech Sol, we offer comprehensive data analytics services that turn complex data into clear, actionable insights. Our team employs advanced analytical techniques to analyze your data, identify trends, and provide strategic recommendations that drive business growth and efficiency.
                  We help businesses harness the power of their data by providing detailed reports and visualizations that facilitate informed decision-making. Our approach ensures that you can leverage data-driven insights to optimize performance, improve operations, and achieve your strategic goals.\r\n\r\nLearn More', 
          '648Eternity.jpg', 
          NOW());

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE `siteconfig` (
  `id` int(11) NOT NULL,
  `site_keyword` varchar(1000) NOT NULL,
  `site_desc` varchar(500) NOT NULL,
  `site_title` varchar(300) NOT NULL,
  `site_about` varchar(1000) NOT NULL,
  `site_footer` varchar(1000) NOT NULL,
  `follow_text` varchar(1000) NOT NULL,
  `site_url` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`id`, `site_keyword`, `site_desc`, `site_title`, `site_about`, `site_footer`, `follow_text`, `site_url`, `updated_at`) VALUES
(1, 'Tech Solution', 
'Pak Tech Sol offers cutting-edge technology solutions tailored to elevate your business. Our expert team delivers innovative software and IT services to drive your success.',
 'Pak Tech Sol',
 'Pak Tech Sol is a leading software development house in Pakistan, specializing in crafting custom software solutions, web applications, and mobile apps. Our dedicated team blends cutting-edge technology with industry expertise to deliver innovative and efficient solutions that drive business success. Committed to excellence and customer satisfaction, Pak Tech Sol transforms complex challenges into seamless, user-friendly products that align with your goals and vision.', 
 '© 2024 All Rights Reserved', 
 'Stay connected with us for the latest updates, innovations, and insights from Pak Tech Sol.', 
 'http://localhost:8080/paktechsol/', NOW());

-- --------------------------------------------------------

--
-- Table structure for table `sitecontact`
--

CREATE TABLE `sitecontact` (
  `id` int(11) NOT NULL,
  `phone1` varchar(150) NOT NULL,
  `phone2` varchar(150) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(150) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitecontact`
--

INSERT INTO `sitecontact` (`id`, `phone1`, `phone2`, `email1`,  `longitude`, `latitude`, `updated_at`) VALUES
(1, '+92 3165601184', '+92 3120548249', 'paktecksol1@gmail.com',  '72.9106°', '33.9946',NOW());

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slide_title` varchar(150) NOT NULL,
  `slide_text` varchar(500) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slide_title`, `slide_text`, `ufile`, `updated_at`) VALUES
(1, 'Welcome To Pak Tech Sol.', 'Pak Tech Sol is a leading software development house in Pakistan, specializing in crafting custom software solutions, web applications, and mobile apps. Our dedicated team blends cutting-edge technology with industry expertise to deliver innovative and efficient solutions that drive business success. Committed to excellence and customer satisfaction, Pak Tech Sol transforms complex challenges into seamless, user-friendly products that align with your goals and vision.', '58806059d354562031616499540.png',NOW());

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `fa` varchar(150) NOT NULL,
  `social_link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `name`, `fa`, `social_link`) VALUES
(1, 'Facebook', 'fa-facebook', 'https://facebook.com/paktechsol'),
(2, 'Instagram', 'fa-instagram', 'https://instagram.com/paktechsol'),
(3, 'Linkedin', 'fa-linkedin', 'https://www.linkedin.com/company/paktechsol/');

-- --------------------------------------------------------

--
-- Table structure for table `static`
--

CREATE TABLE `static` (
  `id` int(11) NOT NULL,
  `stitle` varchar(150) NOT NULL,
  `stext` varchar(500) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `static`
--

INSERT INTO `static` (`id`, `stitle`, `stext`, `updated_at`) VALUES
(1, 'Welcome To Pak Tech Sol.', 'Pak Tech Sol is a leading software development house in Pakistan, specializing in crafting custom software solutions, web applications, and mobile apps. Our dedicated team blends cutting-edge technology with industry expertise to deliver innovative and efficient solutions that drive business success. Committed to excellence and customer satisfaction, Pak Tech Sol transforms complex challenges into seamless, user-friendly products that align with your goals and vision.', NOW());

-- --------------------------------------------------------

--
-- Table structure for table `testimony`
--

CREATE TABLE `testimony` (
  `id` int(11) NOT NULL,
  `message` varchar(300) NOT NULL,
  `name` varchar(150) NOT NULL,
  `position` varchar(100) NOT NULL,
  `ufile` varchar(1000) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimony`
--

INSERT INTO `testimony` (`id`, `message`, `name`, `position`, `ufile`, `updated_at`) VALUES
(2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati dignissimos quae quo ad iste ipsum officiis deleniti asperiores sit.', 'Yasmin Akter', 'Founder, Themeland', '5110avatar-2.png', NOW()),
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati dignissimos quae quo ad iste ipsum officiis deleniti asperiores sit.', 'Md. Arham', 'CEO, Themeland', '4068avatar-3.png', NOW()),
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum obcaecati dignissimos quae quo ad iste ipsum officiis deleniti asperiores sit.', 'Junaid Hasan', 'CEO, Themeland', '5842avatar-1.png', NOW());

-- --------------------------------------------------------

--
-- Table structure for table `why_us`
--

CREATE TABLE `why_us` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `updated_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `why_us`
--

INSERT INTO `why_us` (`id`, `title`, `detail`, `updated_on`) VALUES
(1, 'Web Development', 'At Pak Tech Sol, we deliver bespoke web development services designed to create engaging, high-performance websites that align with your business goals. Our team specializes in developing responsive, user-centric websites that enhance user experience and drive conversions. We employ the latest technologies and best practices to ensure your website is fast, secure, and optimized for all devices.', NOW()),
(2, 'App Development', 'At Pak Tech Sol, we excel in crafting custom mobile apps that provide seamless experiences on both Android and iOS platforms. Our development process is focused on delivering high-performance apps with intuitive user interfaces and robust functionality. We integrate the latest technologies to ensure your app is scalable, secure, and equipped with advanced features that meet your business objectives.', NOW()),
(3, 'Data Analytics', 'At Pak Tech Sol, we offer comprehensive data analytics services that turn complex data into clear, actionable insights. Our team employs advanced analytical techniques to analyze your data, identify trends, and provide strategic recommendations that drive business growth and efficiency. We help businesses harness the power of their data by providing detailed reports and visualizations that facilitate informed decision-making.', NOW());

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `section_title`
--
ALTER TABLE `section_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteconfig`
--
ALTER TABLE `siteconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitecontact`
--
ALTER TABLE `sitecontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static`
--
ALTER TABLE `static`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimony`
--
ALTER TABLE `testimony`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_us`
--
ALTER TABLE `why_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `section_title`
--
ALTER TABLE `section_title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sitecontact`
--
ALTER TABLE `sitecontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `static`
--
ALTER TABLE `static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimony`
--
ALTER TABLE `testimony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `why_us`
--
ALTER TABLE `why_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
