import React from 'react'
import PropTypes from 'prop-types'
import {HomePage} from './HomePage'

function App(props) {
  return (
  <div> 
    <HomePage/>
    <h1>{props.name}!</h1>
  </div>

  )
}

App.defaultProps = {
  name: 'David'
}

App.propTypes = {
  name: PropTypes.string
}

export default App
