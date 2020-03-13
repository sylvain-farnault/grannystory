import flatpickr from "flatpickr";
import "bootstrap";

import { initSelect2 } from './init_select2';

initSelect2();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();
initAutocomplete();

var date = new Date();
date.setFullYear( date.getFullYear() - 60 );
console.log(date);

flatpickr("#granny_birth_date", {
  maxDate: date,
  dateFormat: "d.m.Y",
  "locale": {
    "firstDayOfWeek": 1 // start week on Monday
  }
});


flatpickr("#booking_start_date", {
  minDate: "today",
  maxDate: new Date().fp_incr(28), // 14 days from now
  enableTime: true,
  dateFormat: "d.m.Y H:i",
  time_24hr: true,
  minTime: "08:00",
  maxTime: "19:00"
});


// <%= week_calendar number_of_weeks: 1 do |date| %>
//   <%= date %>
//   <% @granny.bookings.each do |booking| %>
//   <!-- iterate in Bookings -->
//   <% if booking.start_date == date %>
//   <% end %>
//   <% end %>
// <% end %>
