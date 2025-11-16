#import "@preview/basic-resume:0.2.9": *

// Put your personal information here, replacing mine
#let name = "Pulak Ghosh"
#let location = "Bangalore, KA"
#let email = "iampulakghosh@gmail.com"
#let github = "github.com/destx0"
#let linkedin = "linkedin.com/in/stuxf"
#let phone = "+91 8250364774"
#let personal-site = "pugg.in"
#let edu(
  institution: "",
  dates: "",
  degree: "",
  gpa: "",
  location: "",
  consistent: false,
) = {
    generic-two-by-two(
      top-left: strong(institution),
      top-right: gpa,
      bottom-left: emph(degree),
      bottom-right: emph(dates),
    )
}
#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  // linkedin: linkedin,
  phone: phone,
  // personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #extracurriculars(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/
== Education

#edu(
  institution: "National Institute of Technology, Nagpur",
  location: "Nagpur, Maharashtra",
  dates: dates-helper(start-date: "Aug 2022", end-date: "Jun 2024"),
  degree: "Master of Technology, Computer Science and Engineering",
  gpa: "CGPA: 8.15",
  consistent: true,
)
- Served as a *Teaching Assistant* for core courses including *Data Structures and Algorithms, IoT, DBMS, and Software Engineering labs*, handling labs, grading, and student support

#edu(
  institution: "Jalpaiguri Government Engineering College",
  location: "Jalpaiguri, West Bengal",
  dates: dates-helper(start-date: "Aug 2017", end-date: "Jun 2021"),
  degree: "Bachelor of Technology, Information Technology",
  gpa: "CGPA: 7.87",
  consistent: true,
)

// #edu(
//   institution: "National ins",
//   location: "Claremont, CA",
//   dates: dates-helper(start-date: "Aug 2023", end-date: "May 2027"),
//   degree: "Bachelor's of Science, Computer Science and Mathematics",
//   // Uncomment the line below if you want edu formatting to be consistent with everything else
//   // consistent: true
// )
// - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

== Work Experience

#work(
  title: "Frontend Developer",
  location: "Bangalore, India",
  company: "Tata Consultancy Services (TCS)",
  dates: dates-helper(start-date: "Aug 2024", end-date: "Present"),
)
- Contributed to migrating a legacy JavaScript codebase to *Angular 17* with *micro frontend architecture*, improving maintainability, scalability, and reducing technical debt, which led to *~20% faster developer onboarding*
- Helped build a *reusable component library*, cutting duplicate code by *~30%*, improving consistency, and boosting test coverage to *~80%*, which reduced production regressions by *~25%*
- Worked on frontend *authentication flows* (JWT handling, session management, route guards), strengthening security for a *10M+ user financial platform*
- Collaborated in an agile team with designers and senior developers to deliver *accessible (WCAG 2.1 AA)*, responsive, and high-performance applications, improving page load speed by *~20%*

// #work(
//   title: "Subatomic Shepherd and Caffeine Connoisseur",
//   location: "Atomville, CA",
//   company: "Microscopic Circus, Schrodinger's University",
//   dates: dates-helper(start-date: "May 2024", end-date: "Present"),
// )
// - Played God with tiny molecules, making them dance to uncover the secrets of the universe
// - Convinced high-performance computers to work overtime without unions, reducing simulation time by 50%
// - Wowed a room full of nerds with pretty pictures of invisible things and imaginary findings



== Publications

#generic-one-by-two(
  left: strong("kMiST: A KD-Tree Based Fast Minimum Spanning Tree Algorithm"),
  right: emph("IEEE ICCCNT 2024, IIT Mandi"),
)
- Proposed a *KD-Tree–based MST algorithm* with reduced time complexity *O(n log² n)*, achieving *100× speedup* over Prim's on large datasets with *~99% accuracy*

== Projects

#project(
  name: "Gofka",
)
- Built a *Kafka-like message broker in Go* with append-only logs, segmented storage, indexing and durable writes, achieving *~80k msg/sec ingestion*, *under 10 ms publish latency* and fast crash recovery *under 200 ms* for multi-GB logs

#project(
  name: "SecureFed: Privacy-Preserving Federated Meta Learning",
)
- Built a framework enabling *collaborative model training without sharing data*, using *CKKS homomorphic encryption* for secure computation and *NaCl* for communication security, while preserving accuracy and reducing overhead


== Extracurricular Activities


- Competitive programming: *800+ problems* across LC/GFG/HR/CF
- CodeChef: *Global Rank 32* among *3000+* in Contest 88C
- Won *Silver Medal* in VNIT intra-college powerlifting competition



== Skills
- *Frontend*: Angular, React, Next.js, TypeScript, JavaScript, HTML5, CSS3, SCSS, RxJS, Micro Frontends
- *Backend*: Node.js, Express.js, Go, MongoDB, REST APIs, SQL (PostgreSQL, MySQL, SQLite)
- *Tools*: Git, GitHub, CI/CD, Agile/Scrum, Docker, vim, Linux
