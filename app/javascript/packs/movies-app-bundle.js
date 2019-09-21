import ReactOnRails from 'react-on-rails';
import 'bootstrap/dist/css/bootstrap.css';

import Movies from '../bundles/app/components/Movies';
import Movie from '../bundles/app/components/Movie';
import People from '../bundles/app/components/People';
import Person from '../bundles/app/components/Person';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  Movies,
  Movie,
  People,
  Person
});
