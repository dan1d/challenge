import React from "react"
import PropTypes from "prop-types"

class Movies extends React.Component {
  static propTypes = {
    movies: PropTypes.array
  };

  constructor(props) {
    super(props);
  }

  renderPerson(person, kind) {
    return <a key={`${person.person_id}-${kind}`} className="mr-1" href={`/people/${person.person_id}`}>
      {person.first_name} {person.last_name},
    </a>
  }

  renderMovie(movie) {
    const { id, title, release_date, casting, directors, producers } = movie;
    return <tr key={id}>
      <td>{id}</td>
      <td><a href={`/movies/${id}`}>{title}</a></td>
      <td>{release_date}</td>
      <td>
        {casting.map(person => this.renderPerson(person, "casting"))}
      </td>
      <td>
        {directors.map(person => this.renderPerson(person, "director"))}
      </td>
      <td>
        {producers.map(person => this.renderPerson(person, "producer"))}
      </td>
    </tr>
  }

  render () {
    const { movies } = this.props
    return (
      <React.Fragment>
        <table className="table">
          <thead>
            <tr>
              <th>ID</th>
              <th>Title</th>
              <th>Release Year</th>
              <th>Casting</th>
              <th>Directors</th>
              <th>Producers</th>
            </tr>
          </thead>
          <tbody>
            {movies.map(this.renderMovie.bind(this))}
          </tbody>
        </table>
      </React.Fragment>
    );
  }
}

export default Movies
