<!-- Find and Replace All [repo_name] -->
<!-- Replace [product-screenshot] [product-url] -->
<!-- Other Badgets https://naereen.github.io/badges/ -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/h1yung/StikyNotez">
    <img src="https://user-images.githubusercontent.com/54069717/71475766-a806cf00-27af-11ea-9aff-4b0500bf2951.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">stikynotez</h3>

  <p align="center">
    My second Swift 5 iOS App. Conveniently create notecards and sticky notes and manage your notes and reminders all in one view.
    Compatibility: Tested for iOS version 13.2 and up.
    <br />
    <br />
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#youtube">YouTube Demo</a></li>
    <li><a href="#description">Description</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#comments">Comments</a></li>
	<!-- <li><a href="#license">License</a></li> -->
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- YOUTUBE -->
## YouTube

[![download](https://user-images.githubusercontent.com/54069717/71476026-fcf71500-27b0-11ea-8027-5eb0df3fe527.png)](https://www.youtube.com/watch?v=nt5bddWEGeM)

<!-- DESCRIPTION -->
## Description

StikyNotez is inspired by post-it notes found on bulletin boards / desks. This particular UX design adds extra convenience for users who would like all their notes to be found on one screen.

<img width="211" alt="titlescreen" src="https://user-images.githubusercontent.com/54069717/71475766-a806cf00-27af-11ea-9aff-4b0500bf2951.png">

<!-- USAGE -->
## Usage

Notecards and Sticky Notes
* Create them using left and right bottom buttons. The square logo creates sticky notes, the rectangle logo creates notecards.
* Cards are their own objects that you can move around and assign text attributes to (unlimited lines).

Drag and Drop Trash Button
* Card becomes slightly transparent when you drag and hover it over the trash button and disappears by fading out when you release.

Delete All
* You can delete all the cards at once by pressing the delete all button, which navigates you to a confirmation page before executing.

<img width="404" alt="photo1" src="https://user-images.githubusercontent.com/54069717/71475768-ab01bf80-27af-11ea-9ee0-2596d734412f.png">
<img width="411" alt="photo2" src="https://user-images.githubusercontent.com/54069717/71475773-ad641980-27af-11ea-8a5d-85aef9f07de4.png">

<!-- COMMENTS -->
### Comments

Some features I just could not find out how to implement include:
* preventing the notes resetting their positions to the center after interacting with the buttons.
* bringing selected notes, originally in the back relative to others, to the front without the problem above from happening.

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/h1yung/StikyNotez.git
   ```
2. Install under XCode
3. Connect your iOS device and deploy

<!-- LICENSE -->
<!-- ## License

Distributed under the MIT License. See `LICENSE` for more information.
 -->

<!-- CONTACT -->
## Contact

Daniel Park - [@h1yung][linkedin-url] - h1yungpark@gmail.com

Project Link: [https://github.com/h1yung/StikyNotez](https://github.com/h1yung/StikyNotez)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/h1yung/StikyNotez.svg?style=for-the-badge
[contributors-url]: https://github.com/h1yung/StikyNotez/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/h1yung/StikyNotez.svg?style=for-the-badge
[forks-url]: https://github.com/h1yung/StikyNotez/network/members
[stars-shield]: https://img.shields.io/github/stars/h1yung/StikyNotez.svg?style=for-the-badge
[stars-url]: https://github.com/h1yung/StikyNotez/stargazers
[issues-shield]: https://img.shields.io/github/issues/h1yung/StikyNotez.svg?style=for-the-badge
[issues-url]: https://github.com/h1yung/StikyNotez/issues
[linkedin-url]: https://www.linkedin.com/in/h1yung
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
