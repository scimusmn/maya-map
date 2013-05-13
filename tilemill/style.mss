/**********************************************************
 *                        Maya
 **********************************************************/

/**********************************************************
 * Ocean base
 **********************************************************/
/*@base: #548696;*/
@base: #72B2BC;
@ocean: @base;

Map {
  background-color:@ocean;
}

.water-poly {
  polygon-fill:@ocean; 
}

.water-line {
  /*line-color:#661c1c;*/
  line-color:@base;
  line-width: 1.2;
  line-opacity: .9;
  line-comp-op: overlay;
}

#rivers-na, #rivers-ca {
  /*text-name:"[Name]"; text-face-name:@sans; text-allow-overlap: true;*/
  /*text-dy: 10;*/
  /*text-fill: #BBB;*/
  /*text-placement: line;*/
  /*text-size: 12;*/

  /* Base river style */
  [zoom>1] {
    line-color:@base;
    line-width: 1.2;
    line-opacity: .9;
    line-comp-op: overlay;
  }
  [zoom>5] {
    line-width: .1;
  }

  /* Biggest rivers */
  [ScaleRank<5] {
    line-width: 1;
    [zoom<5] { line-width: .5; }
  }

  /* Big rivers */
  [ScaleRank=5] {
    line-width: 1;
    [zoom<5] { line-width: .5; }
  }

  /* Smaller rivers */
  [ScaleRank=6] {
    line-width: .8;
    [zoom<5] { line-width: .4; }
  }
  [ScaleRank=7] {
    [zoom>4] { line-width: .8; }
    [zoom>6] { line-width: 1.2; }
  }
  [ScaleRank=8] {
    [zoom>5] { line-width: .7; }
    [zoom>6] { line-width: .9; }
  }
  [ScaleRank>8] {
    [zoom>6] { line-width: .8; }
  }
}
/**********************************************************
 * Land base
 **********************************************************/
/* Lighter brown */
/*@landbg: #68493e;*/

/* Land as basic grey */
/*@landbg: #111;*/

/* Land as olive green */
/*@landbg: #493C20;*/

/* Control room default */
/*@landbg: #0A202A;*/

/* Maya brown - Same as print maps */
@landbg: #46312A;

#land[zoom>=0] {
  polygon-fill: @landbg;
  polygon-gamma:0.2;
}

/**********************************************************
 * Political boundaries
 **********************************************************/
#country-boundaries[zoom>1],
#country-outlines[zoom>1],
#subcountry-boundaries[zoom>4] {
  line-color:#8f8f8f;
}
#country-boundaries[zoom>1],
#country-outlines[zoom>1]{
  line-dasharray:1,3;
  line-width:1.5;
  line-opacity:0.5;
  [zoom=4] { line-width:0.6; }
  [zoom=5] { line-width:0.8; }
  [zoom=6] { line-width:1; }
  [zoom=7] { line-width:1.2; }
  [zoom=8] { line-width:1.4; }
  [zoom>8] { line-width:1.6; }
}
#subcountry-boundaries[COUNTRYNAM='US'][zoom=4],
#subcountry-boundaries[COUNTRYNAM='Canada'][zoom=4],
#subcountry-boundaries[COUNTRYNAM='Australia'][zoom=4],
#subcountry-boundaries[zoom>4] {
  line-dasharray:4,2;
  line-opacity:0.2;
  line-width:0.4;
  [zoom=5] { line-width:0.5; }
  [zoom=6] { line-width:0.6; }
  [zoom=7] { line-width:0.8; }
  [zoom=8] { line-width:1.0; }
  [zoom>8] { line-width:1.2; }
}

#geo-lines[ScaleRank<10] {
  line-color:#ba22a8;
  line-dasharray:1,4;
  line-opacity:0.8;
  line-width:0.25;
  line-gamma:0.2;
}

/**********************************************************
 * Modern population centers
 **********************************************************/
#urban {
  polygon-fill:#9933ff;
  polygon-opacity:.4;
  line-color:#333;
  line-opacity:0.33;
  [zoom=3] { line-width:0.4; }
  [zoom=4] { line-width:0.6; }
  [zoom=5] { line-width:0.8; }
  [zoom=6] { line-width:1; }
  [zoom>6] { line-width:1.2; }
}

/**********************************************************
 * Ancient Mayan archaeological sites
 **********************************************************/
.maya {
  marker-allow-overlap:true;

  /* Beeswax yellow */
  /*marker-fill:#ffcc66;*/
  /*marker-line-color:#ffcc66;*/

  /* Light tan */
  /*marker-fill:#CF7361;*/
  /*marker-line-color:#D28E4F;*/

  /* Control room default */
  /*marker-line-color:#938562;*/
}

/* 0-4 */
#maya-rank-01[zoom=3] { marker-line-color:#ffcc66; marker-width:1; }
#maya-rank-01[zoom=4] { marker-line-color:#ffcc66; marker-width:3; }
#maya-rank-01[zoom=5] { marker-line-color:#ffcc66; marker-width:4; }
#maya-rank-01[zoom=6] { marker-width:10; }
#maya-rank-01[zoom=7] { marker-width:13; }
#maya-rank-01[zoom=8] { marker-width:30; }
#maya-rank-01[zoom>8] { marker-width:15; }

#maya-rank-01[zoom>5] {
  text-name:"[name]";
  text-face-name:@sans;
  text-fill: #BBB;
  text-allow-overlap: true;
  text-size: 12;
  text-placement-type: simple;
  text-placements: "NE,S,E,W,N,SE,NW,SW,16,14,12";
  text-dy: 10;
  text-dx: 10;
  [zoom=7] { text-size:14; }
  [zoom=8] { text-size:14; }
  [zoom=9] { text-size:16; }
  [zoom>9] { text-size:18; }

  /* Custom label placements to prevent overlap */
  /*[name='El Mirador'] {
    text-placements: "NE";
    text-dx: 5;
  }
  [name='Tikal'], [name='Nakbe'], [name='Comalcalco'] {
    text-placements: "SE";
    text-dx: 5;
  }*/
}

#maya-rank-02 {
  marker-width:0;
  [zoom>3] { marker-width:3; marker-opacity:.03; marker-line-opacity:.03;}
  [zoom>5] { marker-width:4; marker-opacity:.05; marker-line-opacity:.05;}
  [zoom>6] { marker-width:8; marker-opacity:.3; marker-line-opacity:.3;}
  [zoom>7] { marker-width:8; marker-opacity:.15; marker-line-opacity:.15 }
  [zoom>8] {
    marker-width:9;
    marker-opacity:.2;
    marker-line-opacity:.2;
    text-name:"[name]";
    text-face-name:@sans;
    text-fill: #FFF;
    text-allow-overlap: true;
    text-opacity: .5;
    text-size: 12;
    text-placement-type: simple;
    text-placements: "S,E,W,N,NE,SE,NW,SW,16,14,12";
    text-dy: 10;
    text-dx: 10;
  }
  [zoom>9] {
    marker-width:10;
    marker-opacity:.3;
    marker-line-opacity:.3;
  }
  [zoom>11] {
    marker-width:14;
    marker-opacity:.3;
    marker-line-opacity:.3;
  }
}

#maya-rank-03 {
  marker-width:3;
  marker-opacity:.2;
  marker-line-opacity:.2;
  [zoom>7] {
    marker-width:3;
    marker-opacity:.1;
    marker-line-opacity:.1;
  }
  [zoom>8] {
    marker-width:4;
    marker-opacity:.15;
    marker-line-opacity:.15;
  }
  [zoom>9] {
    marker-width:4;
    marker-opacity:.2;
    marker-line-opacity:.2;
  }
  [zoom>11] {
    marker-width:7;
    marker-opacity:.35;
    marker-line-opacity:.35;
    text-name:"[name]";
    text-face-name:@sans;
    text-fill: #FFF;
    text-allow-overlap: true;
    text-opacity: .5;
    text-size: 13;
    text-placement-type: simple;
    text-placements: "S,E,W,N,NE,SE,NW,SW,16,14,12";
    text-dy: 10;
    text-dx: 10;
  }
}

#maya-rank-04 {
  marker-width:2;
  marker-opacity:.15;
  marker-line-opacity:.15;
  [zoom>7] {
    marker-width:3;
    marker-opacity:.1;
    marker-line-opacity:.1;
  }
  [zoom>8] {
    marker-width:4;
    marker-opacity:.15;
    marker-line-opacity:.15;
  }
  [zoom>9] {
    marker-width:4;
    marker-opacity:.2;
    marker-line-opacity:.2;
  }
  [zoom>11] {
    marker-width:7;
    marker-opacity:.35;
    marker-line-opacity:.35;
    text-name:"[name]";
    text-face-name:@sans;
    text-fill: #FFF;
    text-allow-overlap: true;
    text-opacity: .5;
    text-size: 13;
    text-placement-type: simple;
    text-placements: "S,E,W,N,NE,SE,NW,SW,16,14,12";
    text-dy: 10;
    text-dx: 10;
  }
}

#maya-rank-05 {
  marker-width:2;
  marker-opacity:.1;
  marker-line-opacity:.1;
  [zoom>7] {
    marker-width:3;
    marker-opacity:.1;
    marker-line-opacity:.1;
  }
  [zoom>8] {
    marker-width:4;
    marker-opacity:.15;
    marker-line-opacity:.15;
  }
  [zoom>9] {
    marker-width:4;
    marker-opacity:.2;
    marker-line-opacity:.2;
  }
  [zoom>11] {
    marker-width:7;
    marker-opacity:.35;
    marker-line-opacity:.35;
    text-name:"[name]";
    text-face-name:@sans;
    text-fill: #FFF;
    text-allow-overlap: true;
    text-opacity: .5;
    text-size: 13;
    text-placement-type: simple;
    text-placements: "S,E,W,N,NE,SE,NW,SW,16,14,12";
    text-dy: 10;
    text-dx: 10;
  }
}
.maya-graphic {
  text-name:"[name]";
  text-face-name:@sans;
  text-fill: #BBB;
  text-allow-overlap: true;
  text-size: 12;
  text-placement-type: simple;
  text-placements: "NE,S,E,W,N,SE,NW,SW,16,14,12";
  text-dy: 10;
  text-dx: 10;
  marker-allow-overlap:true;
  marker-fill:#ffcc66;
  marker-line-color:#ffcc66;
  marker-width: 5;
}
