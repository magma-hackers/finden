import React from 'react';
import CSSModules from 'react-css-modules';
import styles from './Home.scss'
import Header from '../shared/components/Header'

const Home = () => (
  <div>
    <Header/>
    <h1 styleName="home">Home</h1>
  </div>
)
export default CSSModules(Home, styles);