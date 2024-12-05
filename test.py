int num_hs = 0;
float h_accum = 0.0;
float hs[] = {};

for( int i=0; i<@numprim; ++i )
{
    float h = atof(prim(0, "height", i));
    if( h>0)
    {
        hs[num_hs] = h;
        num_hs++;
        h_accum += h;
    }
    else
    {
        printf("invalid h at [%d]\n", i);
    }
}
// mean
float mean = h_accum / float(num_hs);

// stddev
float stddev = 0.0;
for( int i=0; i<num_hs; ++i )
{
    stddev += pow(hs[i]-mean, 2);
}

stddev = sqrt(stddev / num_hs);

printf( "mean:%f, stddev:%f\n", mean, stddev );
//f@stddev = stddev;
//f@mean = mean;

//============= fill invalid height using sample_normal ============//
for( int i=0; i<@numprim; ++i )
{
    float h = atof(prim(0, "height", i));
    if( h==0)
    {
        h = sample_normal(mean, 1, rand(i) );
        setprimattrib(0, "height", i, sprintf("%.5f", h) );
    }
}