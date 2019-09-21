import React from "react"
import PropTypes from "prop-types"

class People extends React.Component {
  static propTypes = {
    people: PropTypes.array, // this is passed from the Rails view
  };

  constructor(props) {
    super(props);
  }

  renderMovie(movie, kind) {
    return <a key={`${movie.movie_id}-${kind}`} className="mr-1">
      {movie.title},
    </a>
  }

  renderPersonRow(person) {
    const { id, full_name, aliases, as_director, as_producer, as_actor_actress } = person;
    return <tr key={id}>
      <td>{id}</td>
      <td>{full_name}</td>
      <td></td>
      <td>
        {as_actor_actress.map(movie => this.renderMovie(movie, "casting"))}
      </td>
      <td>
        {as_director.map(movie => this.renderMovie(movie, "director"))}
      </td>
      <td>
        {as_producer.map(movie => this.renderMovie(movie, "producer"))}
      </td>
    </tr>
  }

  render () {
    const { people } = this.props
    return (
      <React.Fragment>
        <table className="table">
          <thead>
            <tr>
              <th>ID</th>
              <th>Full Name</th>
              <th>Aliases</th>
              <th>Movies as Actor/Actress</th>
              <th>Movies as Director</th>
              <th>Movies as Producer</th>
            </tr>
          </thead>
          <tbody>
            {people.map(this.renderPersonRow.bind(this))}
          </tbody>
        </table>
      </React.Fragment>
    );
  }
}

export default People
