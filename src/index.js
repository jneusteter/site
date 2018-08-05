import Chart from 'chart.js'

var ctx = document.getElementById('debtByYear').getContext('2d')
var ndp = 'rgba(255, 159, 64, 0.2)'
var conservative = 'rgba(54, 162, 235, 0.2)'
var liberal = 'rgba(255, 99, 132, 0.2)'
var ndpBorder = 'rgba(255, 159, 64, 0.2)'
var conservativeBorder = 'rgba(54, 162, 235, 1)'
var liberalBorder = 'rgba(255,99,132,1)'

/* exported debtByYear */

var debtByYear = new Chart(ctx, {
  type: 'horizontalBar',
  data: {
    labels: ['1986-1987', '1987-1988', '1988-1989', '1989-1990', // liberal
      '1990-1991', '1991-1992', '1992-1993', '1993-1994', '1994-1995', '1995-1996', // ndp
      '1996-1997', '1997-1998', '1998-1999', '1999-2000', '2000-2001', '2001-2002', '2002-2003', // conservative
      '2003-2004', '2004-2005', '2005-2006', '2006-2007', '2007-2008', // liberal
      '2008-2009', '2009-2010', '2010-2011', '2011-2012', '2012-2013', // liberal
      '2013-2014', '2014-2015', '2015-2016', '2016-2017', '2017-2018', // liberal
      '2018-2019'],
    datasets: [{
      label: 'Ontario Debt by Year',
      data: [31.5, 34, 35.5, 35.4, // liberal
        38.4, 49.4, 61.8, 80.6, 90.7, // ndp
        101.9, 108.8, 112.7, 114.7, 134.4, 132.5, 132.1, 132.6, // conservative
        138.8, 140.9, 152.7, 153.7, 156.6, 169.6, 193.6, 214.5, // liberal
        236.2, 252.8, 268.0, 285.4, 295.4, 301.6, 308.2,
        150], // liberal
      backgroundColor: [
        liberal, liberal, liberal, liberal,
        ndp, ndp, ndp, ndp, ndp, ndp,
        conservative, conservative, conservative, conservative,
        conservative, conservative, conservative,
        liberal, liberal, liberal, liberal, liberal, liberal, liberal,
        liberal, liberal, liberal, liberal, liberal, liberal, liberal, liberal,
        conservative
      ],
      borderColor: [
        liberalBorder, liberalBorder, liberalBorder, liberalBorder,
        ndpBorder, ndpBorder, ndpBorder, ndpBorder, ndpBorder, ndpBorder,
        conservativeBorder, conservativeBorder, conservativeBorder, conservativeBorder,
        conservativeBorder, conservativeBorder, conservativeBorder,
        liberalBorder, liberalBorder, liberalBorder, liberalBorder,
        liberalBorder, liberalBorder, liberalBorder, liberalBorder,
        liberalBorder, liberalBorder, liberalBorder, liberalBorder,
        liberalBorder, liberalBorder, liberalBorder,
        conservativeBorder
      ],
      borderWidth: 1
    }]
  },
  options: {
    legend: {
      display: false
    },
    scales: {
      yAxes: [{
        ticks: {
          beginAtZero: true
        }
      }]
    }
  }
})
