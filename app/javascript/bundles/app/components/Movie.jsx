import React from "react"
import PropTypes from "prop-types"

class Movie extends React.Component {
  static propTypes = {
    movie: PropTypes.object
  };

  constructor(props) {
    super(props);
  }

  renderPerson(person, kind) {
    return <li key={`${person.person_id}-${kind}`}><a href={`/people/${person.person_id}`}>{person.first_name} {person.last_name}</a></li>
  }

  render () {
    const { movie } = this.props;
    return (
      <React.Fragment>
        <h4>Casting:</h4>
        <ul>
          {movie.casting.map(person => this.renderPerson(person, 'casting'))}
        </ul>

        <h4>Directors:</h4>
        <ul>
          {movie.directors.map(person => this.renderPerson(person, 'directors'))}
        </ul>

        <h4>Producers:</h4>
        <ul>
          {movie.producers.map(person => this.renderPerson(person, 'producer'))}
        </ul>
      </React.Fragment>
    );
  }
}

export default Movie
