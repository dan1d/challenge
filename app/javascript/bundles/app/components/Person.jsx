import React from "react"
import PropTypes from "prop-types"

class Person extends React.Component {
  static propTypes = {
    person: PropTypes.object
  };

  constructor(props) {
    super(props);
  }

  renderMovie(movie, kind) {
    return <li key={`${movie.movie_id}-${kind}`}><a href={`/movies/${movie.movie_id}`}>{movie.title}</a></li>
  }


  renderList(array, kind) {
    return <ul>
      {array.map(this.renderPerson.bind(this))}
    </ul>
  }

  render () {
    const { person } = this.props;
    return (
      <React.Fragment>
        <h4>As Actor/Actress:</h4>
        <ul>
          {person.as_actor_actress.map(movie => this.renderMovie(movie, 'as_actor_actress'))}
        </ul>

        <h4>As Director:</h4>
        <ul>
          {person.as_director.map(movie => this.renderMovie(movie, 'director'))}
        </ul>

        <h4>As Producer:</h4>
        <ul>
          {person.as_producer.map(movie => this.renderMovie(movie, 'producer'))}
        </ul>
      </React.Fragment>
    );
  }
}

export default Person
