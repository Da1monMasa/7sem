   M S B A M L   `   `   `  ????B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.Pages.HotelsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5      -   5          N? Title$  
HotelsPage??5	       N? WindowHeight$ 1Q?6   .??5      ?  ? RowDefinitions 5   
   ?? 5      ?? 5      $??50 ?6   .+?5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ DGridHotels??5         AutoGenerateColumns .     
IsReadOnly . ??5      ?? 5       ?? EndPoint$ 0.5,1&?6&    ?? 
StartPoint$ 0.5,0&?67   .??5      ?  ? Color$	 Red??6#   ? 5      $ 	#FF7100FF??6#   	 ? Offset$	 0.903Q?65   ? 5      $ 	#FFFFA400??6#   $
	 0.14Q?65   ? 5      $ 	#FFFFEA00??6#   $	 0.297Q?65   ? 5      $ 	#FF65FF00??6#   $
	 0.46Q?65   ? 5      $ 	#FF00F9FF??6#   $
	 0.64Q?65   ? 5      $ 	#FF0800FF??6#   $		 0.8Q?65   5      
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5       ,  &System.Windows.Controls.DataGridColumn   Header$ 
Hotel Name??6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 300 6R   1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   ?? *Name+6R     5"      $ Stars??6%   $	 150 6N    64   ?? *Stars+6N     5$      $ Country??6%   $	 250 6W    66   ?? *Country.Name+6W   4  .System.Windows.Controls.DataGridTemplateColumn  5&      $ * 6)      CellTemplate 5(      ?? 5)      .R?5*      ?? $??BtnEdit??6%   -   5        $
??Edit??5*   4   $
??10 5q?6C   $
??10 5q?6R   ??5+   "   ?? 5,   &   $ 0.5,1&?6:   $ 0.5,0&?6K   .??5-   *   ? $	 Red??67   ? 5.   *   $ 	#FF7100FF??67   $	 0.903Q?6I   ? 5/   *   $ 	#FFFFA400??67   $
	 0.14Q?6I   ? 50   *   $ 	#FFFFEA00??67   $	 0.297Q?6I   ? 51   *   $ 	#FF65FF00??67   $
	 0.46Q?6I   ? 52   *   $ 	#FF00F9FF??67   $
	 0.64Q?6I   ? 53   *   $ 	#FF0800FF??67   $		 0.8Q?6I   54   '   56      57      59      5;      ? 5=   
   $??1??6    ? ColumnDefinitions 5>      ?? 5?      ?? 5@      .+?5C      ?? -   5        $??BtnAdd??5C      $??	Add Hotel??6#   $??0??67   $??30??6G   $	??300??6S   $
??10 0q?6_   $??16(?6?   $??Arial Black)?6?   ???	#FF060606??5D      ?? 5E      $ 0.5,1&?6*   $ 0.5,0&?6;   .??5F      ? $	 Red??6'   ? 5G      $ 	#FF7D00FF??6'   $	 1Q?69   ? 5H      $ 
DarkOrange??6'   $
	 0.19Q?6:   ? 5I      $ 	#FFFFD200??6'   $	 0.363Q?69   ? 5J      $ 	#FF2BFF00??6'   $	 0.503Q?69   ? 5K      $ 	#FF00FFF9??6'   $
	 0.65Q?69   ? 5L      $ 	#FF0033FF??6'   $
	 0.81Q?69   5M      5O      ?? 5P      -   5        $??BtnDel??5P      $??Delete??6#   $??1??64   $	??300??6E   $??30??6Q   $
??10 0q?6]   
???   ?$??16(?6?   $??Segoe UI Black)?6?   ??5Q      ?? 5R      $ 0.5,1&?6*   $ 0.5,0&?6;   .??5S      ? $	 Red??6'   ? 5T      $ 	#FF7D00FF??6'   $	 1Q?69   ? 5U      $ 
DarkOrange??6'   $
	 0.19Q?6:   ? 5V      $ 	#FFFFD200??6'   $	 0.363Q?69   ? 5W      $ 	#FF2BFF00??6'   $	 0.503Q?69   ? 5X      $ 	#FF00FFF9??6'   $
	 0.65Q?69   ? 5Y      $ 	#FF0033FF??6'   $
	 0.81Q?69   5Z      5\      ?? 5]      -   5        $??HotelsImage??5]      $??2??6+   $
??Left=?6?   $??	358,0,0,0q?6Z   $??Center=?6m   $??87??6?   $??Arial Black)?6?   ??5^      ?? 5_      $ 0.5,1&?6*   $ 0.5,0&?6;   .??5`      ? $	 Red??6'   ? 5a      $ 	#FFA000FF??6'   $	 1Q?69   ? 5b      $ 	#FFFF7500??6'   $
	 0.15Q?69   ? 5c      $ 	#FFFFEA00??6'   $
	 0.31Q?69   ? 5d      $ 	#FF4EFF00??6'   $		 0.5Q?69   ? 5e      $ 	#FF00FFED??6'   $	 0.643Q?69   ? 5f      $ 	#FF001BFF??6'   $	 0.793Q?69   5g      5i      5l      5m      5n      