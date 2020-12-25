const path = require('path');

module.exports = {
  mode: 'development',
  entry: {
    main: './source/javascripts/index.js'
  },
  entry: {
    site: [
      './source/javascripts/index.js',
    ]
  },
  output: {
    filename: 'assets/javascripts/[name].js',
    path: path.resolve(__dirname, '.tmp/dist')
  },
  module: {
    rules: [
      {
        test: /\.m?js$/,
        exclude: /(node_modules)/,
        loader: 'babel-loader'
      }
    ]
  }
};
