void swap(long *xp, long *yp)
{
  long t0 = *xp;
  long t1 = *yp;
  *xp = t1;
  *yp = t0;
}

int main()
{
	long int *xp;
	long int *yp;

	swap(xp,yp);
}

