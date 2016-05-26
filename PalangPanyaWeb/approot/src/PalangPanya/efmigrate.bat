rem dnx ef migrations add Initial --context PalangPanyaDBContext 
rem dnx ef migrations list --context PalangPanyaDBContext 

dnx ef migrations %1 %2 --context PalangPanyaDBContext 

