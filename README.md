# [Painterest](https://painterest.herokuapp.com/#/)
Painterest is a social media application that enables users to connect and share ideas in the form of paintings inspired by [Pinterest](https://www.pinterest.com/). Painterest is built on a Ruby on Rails backend, utilizing PostgreSQL and AWS S3 for data storage. React and Redux are the main libraries used for the frontend, along with HTML and CSS, with Heroku used for app deployment.

<p align="center">
  <img src="https://i.pinimg.com/originals/4b/e2/de/4be2ded5919bf134d5339b050595ef98.png" width="100%" />
</p>


## Technologies Used
* Ruby on Rails
* JBuilder
* JavaScript
* React.js
* Redux.js
* HTML/CSS
* PostgreSQL
* Amazon Web Services (AWS S3)
* Heroku


## Highlights
#### Responsive Pin Index

<p align="center">
  <img src="https://i.pinimg.com/originals/ce/09/13/ce0913c539a28e46b7eb274305093f5d.gif" width="80%" />
</p>

A tough challenge was implementing a flexible and responsive horizontal masonry layout when displaying Pins. Utilizing CSS grid and media queries, the `PinIndex` responsively adjusts column count depending on the device's screen width.

<details>
  <summary>Click to expand</summary>

  ```scss
    .pin-index#grid-container {
      position: absolute;
      @media (max-width: 755px) and (min-width: 0px) {
        width: 504px;
      }
      @media (max-width: 1007px) and (min-width: 756px) {
        width: 756px;
      }
      @media (max-width: 1259px) and (min-width: 1008px) {
        width: 1008px;
      }
      @media (max-width: 1511px) and (min-width: 1260px) {
        width: 1260px;
      }
      @media (max-width: 1763px) and (min-width: 1512px) {
        width: 1512px;
      }
      @media (max-width: 2015px) and (min-width: 1764px) {
        width: 1764px;
      }
      @media (max-width: 2267px) and (min-width: 2016px) {
        width: 2016px;
      }
      @media (max-width: 2519px) and (min-width: 2268px) {
        width: 2268px;
      }
      @media (max-width: 2771px) and (min-width: 2520px) {
        width: 2520px;
      }
      @media (max-width: 3023px) and (min-width: 2772px) {
        width: 2772px;
      }
      @media (max-width: 3275px) and (min-width: 3024px) {
        width: 3024px;
      }
      @media (max-width: 3527px) and (min-width: 3276px) {
        width: 3276px;
      } 
    }
    
    .pin-index#grid {
      width: 100%;
      min-width: 550px;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(252px,1fr));
      grid-row-gap: 10px;
      grid-auto-rows: 2px;
      justify-items: center;
      justify-content: center;
    }
  ```
</details>

Coupling these techniques with Vanilla JavaScript within the `PinIndexItem` component, the Pins flexibly resize according to the size of each Pin's attached image.

<details>
  <summary>Click to expand</summary>
  
  ```javascript
  resizeGridItem() {
    let item = document.getElementById(this.state.id);
    let grid = document.getElementById('grid');
    let rowHeight = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-auto-rows'));
    let rowGap = parseInt(window.getComputedStyle(grid).getPropertyValue('grid-row-gap'));
    let itemImg = item.querySelector(".masonry-image");
    let rowSpan = Math.ceil((itemImg.getBoundingClientRect().height + rowGap) / (rowHeight + rowGap));
    item.style.gridRowEnd = "span " + rowSpan;
  };
  ```
</details>

#### Modals

<p align="center">
  <img src="https://i.pinimg.com/originals/08/36/80/0836803a154852459cde5e30b939d916.gif" width="80%" />
</p>

Utilized lightweight, multi-purpose modals for all forms which significantly DRYed up code.

<details>
  <summary>Click to expand</summary>
  
  ```javascript
  const Modal = ({ modal, openModal, closeModal }) => {
    if (!modal) return null;
  
    let component, switchFormValue, altModal, clickBackground;
    switch (modal) {
      case "login":
        switchFormValue = "Sign up";
        altModal = "signup"
        component = <LoginFormContainer />;
        clickBackground = null;
        break;
      case "signup":
        switchFormValue = "Log in";
        altModal = "login";
        component = <SignupFormContainer />;
        clickBackground = null;
        break;
      case "new-board":
        component = <CreateBoardFormContainer />;
        clickBackground = closeModal;
        break;
      case "edit-board":
        component = <EditBoardFormContainer />;
        clickBackground = closeModal;
        break;
      case "delete-board":
        component = <DeleteBoardFormContainer />;
        clickBackground = null;
        break;
      case "edit-pin":
        component = <EditPinFormContainer />;
        clickBackground = closeModal;
        break;
      case "delete-pin":
        component = <DeletePinFormContainer />;
        clickBackground = () => openModal('edit-pin');
        break;
      case "new-board-pin":
        component = <CreateBoardPinFormContainer />;
        clickBackground = closeModal;
        break;
      default:
        return null;
    };

    const switchFormButton = (switchFormValue) ? (
      <button className="switch-form-button" onClick={() => openModal(altModal)}>
        <div className="switch-form-value">
          {switchFormValue}
        </div>
      </button>
    ) : null;

    return (
      <div className="modal-container">
        <div className="modal-background" id={modal} onClick={clickBackground}>
          <div className="modal-child" id={`${modal}-child`} onClick={e => e.stopPropagation()}>
            {component}
          </div>
          <div className="modal-child-two" onClick={e => e.stopPropagation()}>
            {switchFormButton}
          </div>
        </div>
      </div>
    );
  };
  ```
</details>

## Main Features
* User authentication built using backend Rails validations with regex and secure BCrypt password hashing
* Logged in users can browse responsive home feed, navigate to others' profiles, and edit their own profile
* Logged in users can complete full CRUD cycle for Boards and Pins or save Pins from other users' Boards
* Optimized minimal server load with cloud-based image storage via Rails ActiveStorage and Amazon Web Services S3

## Additional Resources
* <a href="https://github.com/stephl3/painterest/wiki/mvp-list">MVP List</a>
* <a href="https://github.com/stephl3/painterest/wiki/schema">Schema</a>
* <a href="https://github.com/stephl3/painterest/wiki/sample-state">Sample State</a>
* <a href="https://github.com/stephl3/painterest/wiki/frontend-routes">Frontend routes and components</a>
* <a href="https://github.com/stephl3/painterest/wiki/backend-routes">Backend routes</a>

## Future Plans
* Search
* Follows
* Notifications
* Likes
