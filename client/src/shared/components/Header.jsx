import React from 'react'
import CSSModules from 'react-css-modules';
import styles from './index.scss'

const Header = () => (
  <h2>Header</h2>
)

export default CSSModules(Header, styles);