# README

Inventory App:

This application was built using Ruby on Rails.
Ruby version: 3.0.3
Rails version: 7.0.1

To run the application locally:

clone this repo to your local machine:
    click the down arrow on the green button which reads "Code"
    select HTTPS, SSH, or GitHub CLI depending on your prefences and how your local environment is set up
    click the "copy" icon
    open a terminal and navigate to the directory you would like to clone into
    type "git clone" and paste in the URL
run `bundle install` to install dependencies
run `rails s` to start the rails server
open a browser and go to http://localhost:3000/

To run this application in replit:

simply follow this link: https://shopifyinternchallenge.vep002.repl.co/

How the application works:
Click "New Item" to add an item. Fill in the name, a description of the item, and select an amount. If there are no existing locations, you will not yet be able to select a location for the item. Click "Back to Items" to see the list of items. 

To add a location, click "See all Locations" at the top of the page. Then click "New Location". Complete the form with a name, a street address, a city, and a state. Click "Back to Locations" to see the list of locations.

To edit an item, click "See all Items" at the top of the page. Then click "Show this Item" for the item you want to edit. Then click "Edit this Item". Make any changes you want, like selecting a warehouse. You can add an item to more than one warehouse location. When done, click "Update Item"

To delete an item, click "show this item" for the item you want to delete. Then click the "Destroy this Item" button.

To edit a location, click "See all Locations" at the top of the page. Then click "Show this Location" for the location you want to edit. Then click "Edit this Location". When done, click "Update Location"

To delete a location, click "Show this Location" for the location you want to delete. Then click the "Destroy this Location" button.

Future Improvements: 
As I focused on the backend code, this application is VERY ugly. One of the first improvements I would make is adding some styling either through custom CSS or Bootstrap.

On top of styling, the general user experience could be improved through a more robust navbar as well as renaming and moving some of the add/edit/delete links

I chose the "has many through" association for the item and location models because the join table - the stock model - will allow for scalability. For instance, the stock model could later include amount, allowing for a functionality where the user is informed when a particular location is out of an item.

I also included the longitude and latitude columns in the location model with an eye toward adding some geolocation and integration with the Google Maps API in the future.

To that end, I would like to add some validation to the location model so that the user can only enter valid address information.
