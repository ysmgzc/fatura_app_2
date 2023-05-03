import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GenelBakisScreen extends StatelessWidget {
  const GenelBakisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<SalesData> data = [
      SalesData("Ocak", 250,300),
      SalesData("Şubat", 300,300),
      SalesData("Mart", 100,300),
      SalesData("Nisan", 400,300),
      SalesData("Mayıs", 200,300),
      SalesData("Haziran", 400,300),
      SalesData("Temmuz", 300,300),
      SalesData("Ağustos", 300,300),
      SalesData("Eylül", 250,300),
      SalesData("Ekim", 500,300),
      SalesData("Kasım", 400,300),
      SalesData("Aralık", 250,300),
    ];

    final series = charts.Series(
      id: "Satışlar",
      data: data,
      domainFn: (SalesData sales, _) => sales.month,
      measureFn: (SalesData sales, _) => sales.sales,
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
    );
  final collectionSeries = charts.Series(
      id: "Tahsilatlar",
      data: data,
      domainFn: (SalesData sales, _) => sales.month,
      measureFn: (SalesData sales, _) => sales.collection,
      colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
    );
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Genel Bakış',
        ),
      ),
      body: SingleChildScrollView(
         padding:const EdgeInsets.only(top: 15),
        child: Center(
          child: Padding(
           padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
               decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius:const BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset:const Offset(0, 0),
                          blurRadius: 20,
                          color:  Colors.grey.shade300,
                        ),
                      ],
                    ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children:  [
                    const Text(
                      "Aylara Göre Satışlar",
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,//sayfanın yarısında grafik
                      child: charts.BarChart(
                        [series,collectionSeries],
                        animate: true,
                        vertical: true,
                        barGroupingType: charts.BarGroupingType.grouped,
                        domainAxis:const charts.OrdinalAxisSpec(
                          renderSpec: charts.SmallTickRendererSpec(
                            labelRotation: 60,
                            labelAnchor: charts.TickLabelAnchor.centered,
                            labelStyle: charts.TextStyleSpec(
                              fontSize: 12,
                              color: charts.MaterialPalette.black,
                            ),
                          ),
                        ),
                         primaryMeasureAxis:const charts.NumericAxisSpec( 
                          tickProviderSpec: charts.BasicNumericTickProviderSpec(
                            desiredTickCount: 15,//dikeydeki çizginin bölünme sayisi
                            ),
                            ),
                      ),
                      
                      
                    ),
                  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    "SATIŞLAR",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(width: 70.0),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    "TAHSİLATLAR",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
                ),
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                      Column(
                        children:const [
                          Text(
                            "Ortalama Satış Tutarı(Ay)",
                            style: TextStyle(fontSize: 16.0),
                          ),
                           SizedBox(height: 8.0),
                          Text(
                            "₺0.00", 
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      Column(
                        children:const [
                          Text(
                            "Ortalama Tahsilat Tutarı(Ay)",
                            style: TextStyle(fontSize: 16.0),
                          ),
                           SizedBox(height: 8.0),
                          Text(
                            "₺0.00", 
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ],
                  )
                  
                ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children:const [
                          Text(
                            "Toplam Satış(Son 1 Yıl)",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "₺0.00", 
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      Column(
                        children:const [
                          Text(
                            "Toplam Tahsilat(Son 1 Yıl)",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "₺0.00", // burada gerçek verileri kullanabilirsin
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ],
                  )
                  
                      ),
                   Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children:const [
                          Text(
                            "Toplam Satış(Bu Yıl)",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "₺0.00", // burada gerçek verileri kullanabilirsin
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      Column(
                        children:const [
                          Text(
                            "Toplam Tahsilat(Bu Yıl)",
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            "₺0.00", // burada gerçek verileri kullanabilirsin
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ],
                  )
                 ),
              ],
                  ),
                  //---------------------------------------------------------------------------------------
                  const SizedBox(height: 35,),
                  Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ), 
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.12,
                        width: MediaQuery.of(context).size.width * 0.9,
                         decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius:const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset:const Offset(0, 0),
                            blurRadius: 20,
                            color:  Colors.grey.shade300,
                          ),
                        ],
                      ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:const [
                              Text(
                                "Toplam Nakit",
                                style: TextStyle(
                                  color: kTextColor3,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "₺0.00",
                                style: TextStyle(
                                  color: kTextColor2,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
            
                      ),
                    ),
                  ),
                ],
              ),
              //----------------------------------------------------------------
              const SizedBox(height: 15,),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ), 
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                         decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius:const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset:const Offset(0, 0),
                            blurRadius: 20,
                            color:  Colors.grey.shade300,
                          ),
                        ],
                      ),
                        child: Column(
                          children: [
                            const  Align(
                                 alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:  EdgeInsets.only(left: 20.2,top: 10),
                                  child: Text(
                                  "Kasa Toplamı",              
                                  style: TextStyle(
                                    color: kTextColor3,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                            ),
                                            
                                ),
                              ),
                            Padding(
                               padding: const EdgeInsets.only(left: 20.1,right: 20.1),
                              child: Divider(color: Colors.grey.shade300,thickness: 2,),
                            ),
                          const  Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding:  EdgeInsets.only(right: 20.1,bottom: 10),
                                child: Text(
                                                    "₺0.00",
                                                    style: TextStyle(
                                                      color: kTextColor2,
                                                      fontSize: 18,
                                                    ),
                                                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ], ),
                //--------------------------------------------------------
             
                  ],
                ),
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}

  class SalesData {
    final String month;
    final int sales;
    final int collection;

    SalesData(this.month, this.sales, this.collection);
  }
