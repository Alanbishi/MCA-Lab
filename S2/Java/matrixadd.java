System.out.println();
	}
	for ( i= 0 ; i < row ; i++ )
	for ( j= 0 ; j < col ;j++ )
	res[i][j] = mat1[i][j] + mat2[i][j] ; 
	System.out.println("Sum of matrices:-");
	for ( i= 0 ; i < row ; i++ )
	{ 
	for ( j= 0 ; j < col ;j++ )
	System.out.print(res[i][j]+"\t");
	System.out.println();
	}
 
	}
}
