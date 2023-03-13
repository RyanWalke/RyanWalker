import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
        ),
      ),
      home: MyWidget(),
    );
  }
}
class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidget();
}

class _MyWidget extends State<MyWidget> {
  
  int _selectedIndex = 0;
  
  final List<Widget> _children = [
    Home(),
    Explore(),
    Add(),
    Subscription(),
    Video(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outlined),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: 'Subscription',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Video',
          ),
        ],
      ),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 150.0,
            backgroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Image.network(
                'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAT4AAACfCAMAAABX0UX9AAABBVBMVEUAAAD////+AADg4ODIyMj8AQDLy8tpaWlhYWG+vr6Ghob39/fa2tr8/PzQ0NCCgoLm5uYAAAQtLS3///uSkpJ5eXniYWAgICDAwMD3AAAHBwfs7OwmJiZSUlIjAwM2NjalpaURAADcEBNZWVmysrLuAABzc3MPDw8rKyumpqYKAADSDw9JSUlCQkLUAAD++/8dAwMCCAApAQo7BAVWDA1qCw93Cg6DEwyRFhGeEg+oDw+vDwjGEg/CEAuCDRJhDQ3rDBDKERzrQD/aPkDnpJ/88erhe3u1CxX51tLcV1DjAADx//ztvbnll57+5egxAgTosafkkov86N7hbWrZOTNGCwppDAgVhURXAAAIuklEQVR4nO2bC1/ayBqHJ2iUi0FHQE3wAkiwBVR0qyuKhe5u292693P0+3+UM9dkAoSLYI7u/p9fq5OQDJnHd65JCAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIBnQin12D/2n7KNcH+zWa12OoeCTqdabYZnyF8eafKzE77cV0eTXLCf9PK7D1fX3990b+/uei1GzYRtsV293v397W335uN1/8MfHajjNJserV7dtmoD33ddO5ViPySpAL4ldrtuiidc3x8MPnX75KIZq9Bb+pVuH3G2l57vYlDSb/nMCpfDkaoCiQq1LT7nSa5x8OkDSTACtyzO3gv8YRbAozeDlPChQs5W4RaJQJUWnwefMIFPlKpGMZ1fY+TbKtt1uXk6wxXIMyPkD8YctyL0ZZZU7iVBrwauUU/ngUmsfdD57IrCWUW1WZebs1xByRplfcxxr1LfYSvSzM2lj9XiXlB9dd3ieKqs+Vmu4E3r++j7z7THmz930KdKoIy3ssqWpx0rO8sVvF191CN3zw6+lGgvbymRrd+6LPiu2DiW+mbqJt+yvs7ZM91pelofMQtejITiZNIbecZqTp6yxtJrG2+j66D0cbCgvtqlHj7nRfEqIr0q0vV5rmXDaDvH8vr0EfrkLqjPD8Z+RaO3KIt0ep5LkXZWpx3wivSxVv/7WC96nDcFt6/1nYrmLseT+6KkzlwX8/b0MYHdWHlyAjLNoG1fB0MXGXJ8pFyafdgS8Pb0sei7jbNi//CjLwVO0XcTZJcR5SsRPYjRQ+iDUjbbOJp2MXPoOyllS+8inx2USqX13WcoWAQWNvdxwWfv5H46c6dOSGy7G2TXCPqLFRWHnkf2M2osUtY2M+UthuiVGzJ5TIihzyN7fO/WCt9bEslymhj6MrqTEbNfjxztqa/Y2kx0Qsz0teL0uTuF889fztzUtMr7NchOztt4qR2eyPGisdGgI7bYzw1ZWtlDi/ncpjHYMfTJTli0otnwCKXvpCzzY9lJVw2+ob4i0arNhhy1+OgrnFvWz798k8sv8QJ7YX4rystBUM1OLRPZGI7qS0f0kcn6VoLseDPhqS/TFBOMPzbinaiv4DxYv37yJ1fhQJ9HKiIMDtQQphGICGgsri/nBLmJaCYr4Q4egCeJ2WPETTqUPssqFD7/duZO6kBaYW7HKgD2tB81d1ttN5ywwIvpYxV0XTen/IC0tFZ615CNxEzT7GVxGTPp0PoKhYL18PuXs1h9tqlPtnkZufjCVWUCD5uy6PtkUX3CTz7cKzt53l9VwgySgZI/puizePzxJtBXq9Cjh9aq4YqzmKttEWGqQvRIUIw1ZIE3F9a3YuzlJuU6GW8V5JrFVmL2mL7vpuvjLs7P//zk++NHgaY+Way20HcQXUKVVau+sD7Rt7bl3vdEL1TwJYbTMN/Xpe+BheA5awKnRt+21KULr0rJe0gViGvL0af+LpnAGZ/qHMlkcoPnWfUxWPLPb2N7EFOflCQGZnzppBGWXSlZWY4+1RSsBquMvE3dD02+Ln0F69z6/S/WAY9ZnrEj+kRD7uiQyxp2QiVL0KeqbD74Cxn6xi0VvhB0Fn0PrNkqsLZv/JEs+oyB6rqlR2G8QMURO8vS52h9m+G37Satj9IZel4WeQ+//ujb/viVQbtVNbN0lD7RQb6cvpzWlw0zM3qRZKD0cAZ9hb//c+byfnf8oa2mmaVyIzrFBPWJhQUncX3Vyfq4vxxv9PigL05fJEtlzDo2Nl5en2P8TLDtmzDndXcKTuHBKbA578Q1F7sVeVBDDiQcudCcXPQZJBh9JH7Fxd3hg72fd75NXvKz7ftonrpgvD/5h+tj/mLX+1jldT5/OfNjeozgQPc2+pSQLNiaSCen7/TdtuIouSUXSmlvgr7f5FrfFH3d+fSNWy5dYOCi7rEnvU4voJR8jV1N/uG/sZ2tqc++IZGu19Q3OmzmS/TLGzavRYbNaviZ4HIpJXF32rgYd5anX9yP0TxNfapsYpFUFp6vYi11zpuWKfE0yGZ2M92eektqebDK+zF+JW/6bTaO34/maeobXTLgdpagT60O1PUihdUOvyIBbwqm7yreEB/rTdc3eIxv+1SQVHhaJvloegn6VFhng3zT4Ve/uLUAVvDHQexK/GxPXg0uLyKtjamPxYNcfPF0vPB6LJ9/sU7YXrNxNPTlwyOKY/XVw/NWlEiP7Or7e8nhHdZm1BRHj0afbzb0eSQj9PEx9HttJCg7C51Tdd9nWF89cH2gjjDudbBk2wkDWGbM29RikEqKpke+zlRF4+kOvaAQib60nEiVi+rmjrhTqUe6e2sqMaJPhZyTyesFHPNWUVnfqhSm2vKQjcqe/LRIEuXKt+OWombAdvuUxFdefXtHz0dFC79thbcWK2P1GXeHc5VhfeHJ8j5v3jJwcgk/d39ZY+MT9UD9vO5Y59wbfjUhqu9IiZNlfi9N66hzrOzBWH2s79CWSutD+tKOPlk9fLnvyBZC7m4k/d7C0yDl2nM9oatf8GD/a4/D2QXTKY5H2uUwNCqqaPtlZbSoxh1C35bhfTundBRVn7OuD3DIsfwGq6wfEjraCmN1ricKl8P1YE59ocLa08hrMZlVTkVtMV/ZvCjvVv0omBHs1tkuZ5VXZX7wmqjTdXFiUZ61n2FH5Pb4fYs1fsSBPoCNfE4qTH+ufhJ+xWaey87ls0nOOST0gjy1Bql5+w82FXb9r48XM71V5L3bH961O7JnmP1JR4xa+r/MeokY/HX64p22WV+PYWHnD2q9bp+7fz4TA2XCh5748FW9mkXIoXqjsnt3d3/f6w29U9lSL1Te8Tcqr5/wRuUQXvDXpFR6aVYZncPOIf9dbYqXdw1hlEJfCNWIV0yDrTAVpTk1w38RI3FEdWwFGvVuQptQBwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABekv8B/YzMCpQ8N4oAAAAASUVORK5CYII='
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.cast),
                onPressed: (){},
              ),
              IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: (){},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: (){},
              ),
              IconButton(
                iconSize: 40.0,
                icon: const CircleAvatar(
                  foregroundImage: NetworkImage(
                    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABblBMVEX/////pgD/AQAAAAD/AAD/hAD/lAD/pwD/pAD/qQD/ogD/qwD/hQD/kwD/ngD/oAD/igD/mwDp6eliYmL/jwD/+/vx8fH/5ub/9/f//fj/y8v/4bD/7u7/9PRZWVn/6en/3d3/0tL/fgDJycm1tbT/Skn/XFz/t7f/cnL/pqb/kJD/LCv/2dn/amn/TAD/KgD/bQD/VwD/+Ov/uUj/np7/iIj/Gxr/897/PgD/y3D/PDz/srL/6cP/rCT/MzOmpqb/7M//VFP/XwD/fX3/Hx//vVb/wsL/68iEhIRFRUU2Njba2tr/sjP/1pf/wmT/z33/1Y3/36b/RUTFfAA2GwDnjQBNKgBhNQB+RwBxQACYVwCoZACXl5d4eHgmJia/v7//xYr/Qh//n4v/t5vWhwAoEgAXCABDJQCybQDRhQDcfgAtFwCMTQAeDQDPdgDjkwD/dyP/fGj/Vjz/2sT/xbL/hWz/koEYGBj/bVj/rJY+ZjGxAAAaU0lEQVR4nO2d+VsaydbHBVu6GpTF4NKAEUxEFhFFBXdBQZOIa2J2J/dmjEnm5sY3mUxm5r9/q/fq6qrurgbU+zzz/WGeySNU16fr1DlVpxb6+v7RP/pfVm1jo16r3HYtXEisVEQv39tobbYXW6uHG3casrKfPDxePUp6QKwvAllCu3VY637NuqJK8rjV3hR8ACzW2b+8CnyyICTfPr6LjPXj9iYPqyfX8oS5EZOCSqhQhu4aYyW5qNHJNdyssxZwhABKJQQ3D+9Qf6ycthE8T424HzITSu3Y2vfksSSNjE+kJsfG0qrGxiZTE+MjXkuD7eezVK/N1gDiIV4CFGxGZlMdT6UziZn1pcLybqmUbUzLamRLud3lwtL6TCKTTrGCihurQtBaO36DrZRFAqEPCEf77ssYGUvMLC3nsmfFqp8jyt/cms7mlvMzmUn3mLWTNiBVLnjMRFizGKmC6GufurLUkfRMIZddKyJofrMQ0GrxLLu7NDPmqmbJlkCsGjRTpj6UJJciNeOxY0GpveXsWtNPJsNltOdatpCYcChaPN4kNqBUM56pC50QDF0tCCzadul0PtukNJsLzmJpfdKm8NoijU8y01MWwiMqISypTenTIxPpfIOdDqP0Z9fT5KYUk5s21WLsiG36q5IsnjQKnJhdL1W9seGczdwMAbJyQumBGuERA6CoORoQDgetxQJr9B/bW17rHM+APCvsYeZaO7YCBiNho1XBIgNhRSMMBgKBWNhiG2DzBEUcmc2Xml3C0yGLuXwaeUb9iMcBg+EYrJ0xcGNxpjWttHAgIDNaRhDCsYGYWJ6udpVPZaw2ChntGRuWUUwwJtctoL9+sMkwqqlrRhpQBRl5MyJ/pL6xRG7L33U+ldG/tjurAG5S+AIB/e2DTYZwsaF+KxLQFYtgrRhsSa8s0w3vYsPINXfTMDzjgDGkYjqhUHdPmFSano8NBZCisO4IWrVMyWNkYGHkdv+FjbAiAbReWrUAzzCk1AgDqIYCWHfkY//uKZ4GORcw9ZBgzFStQFj/CzshGIoPmQqLRUyMwalyzwk5vxkQhM2vfSge0//GMLtQCPnIYDQajZsoTc3Ig54jSi0o0BpwKB6PRgfjWpXYrZQPD0ANDkZRxlgQeaO8r8eIHLdiAgyb+KKDg7CCUc3xeyCMDSiCjEjJERSRn+otYTmGAKIWOqTgSYSqq/HgS/nAwACJMYwiCj1E5Lgy0oI8aqHxQaNuGiFLPFQJhwYGEEbDVGNoZwxN+XvECAGHkBZEgnM8itZMNSq2iG8lhNZgNCMa/qGh9qYvQsBBw1pQC0UaUCIMa4QMo7Z9QCAcGEQsFUUE871AhIBTPp4ACHvgAJGQZeRdJxKaEMMIYnDe3wNC/7zutnkQQwDxWmmELLMnZW5hIfSGSM6zOaUCOP+O7rRRH2MBNPphi4GwIk82EV9KQkT8DR/cIVbW4CiXV1bm5hZUzc2tlMtlvw0mjPSGy7YF1AmDqwyEyhyfQEhFBAumiup1L8/tzE9Fh2KxcCQYBLqCkUg4NhSdmt9ZMUBNBZRjOiDiRAmAkFB9DycMhH3ybEWP+FREY7bBCzqixrayMxWP8KFQSBB4sgQB/pUPx6cQTrUIvxEIEcAAAVCP+BGmXFubSkhFjCiIik2uzEfDsPqCedpMFi99MBKfn1PtVu6EUyHtz+hALU6qkDZqCzIM2vr6WjJhmFTgQHSIjBibkytYXlmYCgB3cCZMIRydn1tRIOf1DmACHCTVRx15M2aEV+WaR4glDkQDZMTAHOeHphnzCYx4OqUQHJpagJALupdxBhyIK58EIaasvpLzBuQiUTtF5xp8fB62Hux0XvBQyPkhEiDJy0ga0gI+C2DfqTJso5RJRQR8J3hqITxPNFFaEw6oM2CmhDAcmCoPI/bsAXNXRPJ5vo7xTMUAV4CDGiFTsFBX10gB0dqIgQi1qp0JuLFROGhTP51kIqzQAyKOGMOzxV1UxBjM0MxJC4cgxLY+rawB82GKZRh2iqdRuyteb8Yhak20YMG6jq8srwVppqE1Ip5D7b7UZqRWZCCgEAaP2LZRiGq4oNqG0oiW9YweSB5209wM6mgYN4qoy9yW+RNiHT22UF3QUqluxnA0PJujgbN8ZbGO6mqkl3cDDagoYvOio8prBqE6I2FNWQuhu5qBQJeCnytEem+JK4tiYJF1q09FHnvTXU00doOAcAhAQxwMKJ8Ax6x70irHiquh2Ec0ZlehHggEKGNk9U3z7vb5IBIPlYJjxIKjYbva3CRiVE1hMO75kpRU5thhkpnGbx5QQiRWRRn38/H3TpuNcI3/Kjc/T+qI8ZuJEhZEkj2p3ZCfb84wEia2BuRGJHTEaPAmnYw9otoNpVzfmrt9cZomsty8wmEpNRq5JUAfITyr0ZCPzXFciYmwwHE7clPxeEe8TUDrZEfNYPDxMsdx6wyAGfj5OaUjYkPTW/CiJkTMo2qxYsrP+bmiezsdz8LPl+PKt01l3ngcxAVM0yg13a2k3Dlu1/U+3Lz0RvxTyrfRjhi9ubEoTUHUptS5IR9ekbOsRbf+ND0tv5F5gMeLwcCtA5rHqOrYWOqGcjK65M5ORwryQpK+NGLEi6E7AGgahIS1bqisBnDVvCvCxJqSWS8HMDON3glAJIDpFVrQljsaaReAqV31hXAD6qpV9A7ECVR6ClDNBfPhsr4oVBh3Jtxrah/fUQtUzHTwRudLtlLzuNrirxDVF+a4rYwjYCqnr5KtqKNaJczeBS+jSvV+mpGGdvSVR45bdmzEvar+PvzaioBUXrznWTUGKb5BHXX7QmVjbZVrOjXiRMlocW5eWcSTjOKWxzIWwXGInoOKIavHMOw7NSGy5YBbUQljes7uzggGfm3tN2TalcX50/aEWfR9+IOamcbvTidUFY5qjiE0Z95BYN+IGdPr4AbUteZY+M74UU0gphlpuGzazMFVbQc2JfOH57TV9DsHaEiYMu/lgTHRBjBdNX+47CoGqjtIullthiIF8z4XSHhmc3SqgH3YPyU4PgGAULt1dLS4aTnW6VmwyMWjo9ZiyEWRfGwF23JkNzqdnMZfx4LTqjUAm8fJeq1Sq28ck08+euDTikxSDlOiEgbM3VCeYlDzbutN7G2YdrASa8Ov7mvJZnHfenDHE+CifseBWD8hHYhFxe/gW+o4bm2PAjiew7eYcf55W0IQMh3xcjpd5g5wFV2BcDiRp+Sg/DhigTLZz5xZCLk5u9QhCOHH9E47RQRB/IzqftsOURjEjVSqdTZNJlyybqHkylF6I4KQdSdZsjNDBT7rjop928OQ84StjVyVnM6YtBipbKaA2og86UjwSUeIYJVQ5CH52LVcBYKRyjMMoq+Bc3vCZ1eo64SgXSeUoi7LeQQkrgLW6EXyUauRStWeThPKGcmTtrJqKTdSdcg7Vjfob9wRkD8krpEd0no3D0hGKtWa5E1TBCOVGnGHmrwg7+fsoBHJVmHTE7UtnwQzJUyEZwlG6teTioTqbJL3c4on3gmPyAu5NeIND/I3KBvMuWnCyG2G/Dao/ZB2XwrxSg2XhJSl6gqVkOxppIaxTvUndsndcJ42bgMCedlVXT32RLhKaUN6vBCmyK6GMMGYPCP2whWbYRt5M6B+OZEHwhZ5Q4XlkKwhPkJpxIZlWJMhGbTUhPT6kK+PqNsGaHvCENEsxFWb70gjb2LNLR2RHCtMR6vw+ggk315b7WAWBVp1tiaUAgaxETnOEi9yxBexYzfwttweIVb2D1udjGmAb/Fko4YVukH1M7KEKNH6uGUMcHyLSBi3n1q0j05Ok8kNScnTw+OjVlvobI4o3Su2eHQMS91QSz1Zbdt/hefnyMMajDBNbOo5hyk+xOE3VfFK7qETPqVIqQxTqQ7fEOLEulexoSkpGnKcfRMaVep6nsbHUmhohWimWERcJn1oJeRc/B2QMEhsHixb0yB9ZsqGkBc6OljBJF5+GH0WFyQ0Ip4ZHikSPmOXS+SD19eRCO/tcAybeAGEL58+vaRnG0gHyuFE30Q4RmrnHRtA8OnFi5evP32OeTwB5FoCH3v65uXzZx+eP6UTBkipjLUUSpggTe+j9LoL58/7oa4+vnpz3sOGhNZ5/vrFs35Zr6mNSDzgyRVnUULCiIZbsTFS4dMH5bEQ8uVvfKgnjBLfy2dX6oP6X1zTG5GUj2qaRjXLhJTcPN1V8+B1v6GrV7+B7rcjdC3nL6+Qxzz7TCck5RTNqe+S9QNlGyPlwy/7TXrxm6+7npXnwfkX8zOu6B3Rx1tnwpzfNIHKEjKlNitqfPhVP6aX56CLjLzv+s0H/BE2hII1I2UOFxPThGy3XQWshP0fXl8CF0MgV3z89afnlgf0f7WrkMVMOa6ETBEnLTka21QwkbC//zn0q11oRl4IPiUVb0foEyxmCgMiEi7SeMDXNl8yEfZfvfgU7nigBx3Ml2ek0u2slGCmHNdAFoMTFkK/TbgneBpN/311HurMVEORNx/JZdt5Gh8fsSwjmtLC+j4ow0gH7CrKR76QayF1x3AH0ZEPnRM6oFoyPVpACdZVtjNkdjFTxfntwr1kSW9o9ejv//g14rE78nzsNb1cm4gPFRq0EK4lDMJ1C+GCfR1hMKZXpf/LpaetDTx4+oJe6HM7R2PdkiHtcUMGNXmc0G83cZIk4PEYqw19xcqmjm/+Y9OCXx3emoDHC9OW4SWc0C7HphYYeUP2eLKu3kRYHY79O3t56WT5IXyRxo4QdkPnNqBFLVWvGREFcgBS9PFT0HHgi+zBdEO44CKs8XyYNPLQWvE104ZbgRZ/oP77+tyF0fNhzNVwzXUbQqduqDHGPlFN9eoNQ1/keboT/eJyxCuUWQgdNpkYNQuBry/+S67Zf2zjF1a7p2Qnc/XxTcztECK0wGClZfcBjQ/5jGk49vJdHwEjj5E+PH/5NOx+iBTCsjUmQixasKUR4VQ8/Pn1q+eWpvxw6ZZQ+GwZqT178eXTuY9leIS7GlvCHcbxMy/w4c+fIOWVqZaWGE3L8wqfrjC6N0/Pg4xJLj6GbVJEI755TOPW0eCQkevLpxKm2qWuXp2b4IJBIF2YJN2tJP2/6ZrQ8y/Klz58hHBfP19HPNziwwfLdMKZppnQMd6TH8FLdb++vrz87SvU5bVxEXUQhORVnI39en1fWm85aod8QeOqcBCRvvPb5eX1dTAovS1PA1tzYtg0Lk2YCcvez46ot3hJIyytliACQqvJekUU9WUz+L+V2sZxW9Ah0SvAPD97x0x4hqQTM6b5IRzReH2IRdAYN1c3aCfJa4eLHS7HoeLnzZaIzg/HTKuHThML9wJgc9H+52nE/dV2t7bempP7HJdFFrpTa6a/2W+5dC8gtE6drzqoH3eJkY+aCdGNtCMN06EM6kYvJgGw6PJ3afbpv8vBIj7uNxHm0O0YJRPhYDcIoXtxfQke6cd/PBCaFmiwlXx0uxDnj3eBEGy6MFBDtePOd1DzMROhfwl9wBJKWO7CxSzUHzKhSTzsGFE9DqxhVE2n12dMhJ2fNAwyXxfT15cMdXg8Tkp8I4TNBFr6LEq40ukZIOBrefl1rw3vu6kUwgg6f+K2TKeDJpCBKTfX4XFYwFN24PUYkQ8uoP5y2rzFFFm44BY6u9rDM2CniNJSMBoOzWUjR7rkGzHkq3ANMWyXAb4jYh8cHbbI8hnx1G4Lm/VRwLSZhwcmQmz/peFMpX3PcJ4TCrUXW0dHq6vSAaR2KCTPeFw9lvhzkgdvL+5Z9OgBvkVSPHFnPvLrVydj2nwMCkkochx2IiGBEP5f6/h0o16rVQzV6snD1XbIBSUghokHj4lpmCePRnFEu9/SUp8QjAAhtLh6cirNxeq1ujwhOzw+WkTzGByHHUOc9BuEefJxaFGsJVfbvD0k4En720efEAGhLIgV25ghtV2ofZysVUSLt4Yzsr8RwiL255EGQmh3RUjtZHHTpleSfxpsmwbY3/8Q/yz91I38i6irSbobQw9UWC/kKbgklDZ8HlNndUHy3fb36IQXeCP2UXZRS3hHNngSIepNLIcQ94zruB0IoeqHLSIjCJEH2/fphPcthMR96wCEWid1h3HExDJCOIv/VV/o5rifLu6WqJ22rLMB0rksdkLCCBUEhaNT53Fgyoh53Jbl5JPxV+6bq6vPaoeWSR11NMpEaD3nBGeaSTfjXOS8AZez/NWwYe57ivBtq8T6qvllgxDthk0bwntWQuwUIwiGXM6kjYPaxGuxEtqfuXLaVXnyEAQNHbQDIcyEpkYEoOXU/zTtGd2wSWAYa+gd8VeXhFJdjGYkx3pZjITIYTUAXP62q6SfRhOSDjtP6EfVuW/uf7tWPNFGksBH/w3WCzqhNVr0IUe5AE88gUHW+HeHiKcnvrkyy9wgqZ4oB216WuYhnfAt8W0eqxdybLJcS5o2xmVF4h0uaS9m2mf8+KLNz+gO/0IlfEf8wr5sGSwW2odskoVGSrxWYXzZ8KYM5Uo/oAkRaccRFb2lAd63TqEkidDXSAfzmerhZKTQTI2g/ztT0TWICGwv7h+l9cRtyhdOASAfgqLLyMSY1mRQjWl5YY77g6ls+bfm7d/3Admd3iM3oTzFYE1m/TSMNEeL6AWtq3JNtkbsq7Scfl3igDT6fnxA/XzL/qejrZrc0gnpV39ktvRG/MaYLKvUnT4x+sjibh4/oH+8zprrea83j929dHpynyv+YHyACz3ELPU+vQXZpXcxCIofzEM0Y5jyN6/5MhsNv0WSGU8e0fqgJ+nbSTiuSPEzksb1wTlX/dtLUtdJB9v3NT5LFqojzU4jwdCuZCRofmd0Nu40MvzwSX//L48OSIM17xovIHkm2u00slJN44N/sN6Q7U6jsBWf2LgYT0oUjWB4Zm8cBSQPwDR2c61eEKb+4mxnhqiQFX3O3xM77QHhyHsE0KEJ0XSVn/t3D/xpLwgTxuq2izuvZ8+Q9/FHDxC7T1jRh9ywzg3HFMw42oj+990PGV0nFH+iNXZxbflsA2nEZtej4sFbKVpcvOteNPy1itgoeWKIaQn9xlaXR2/DF85DUjZlkL1AnLtfSBhDjurBwO98MS9Fw+8eynqHBnd9BQPJz4wqn3voCXrsL7S21GmTWTNN9Esu7h4m64G24HQPUj6QdfDQmF88eqDqQJsdX3h4yOQ3tK60mS+uEdONUdx3ywqAS1EWDWn607IM5awU4mWkU6Nue/csulURGmqa/dGyHtATUAT9wj6ZqrxH9nm5vK9c0ZKpEblpj4Y6qjbixcX9x0TYP588vnfxSP3HY+byxb/Rvc2uIoWmiYYZseHSvjGNqFOlB6MHBw/ePdx+++hCW82/ePTo7TbsngfDo8Nax2QtHgM079RzUgLb+D1tOyOhSvUhupMcGTWkV2dUJSRnTukS/zbv+7W/PxjXiMlOJY/qCXEbITzY1qVGB3WOrxEyzhglQFMTsvwIS5+8nGhG9DuvDBM0evCLRmhNCr9VPyObKOuUuAJN1ATo/gdKVOGXmXJcwcuMePSeZn/voNt5sv1WCZKP4T/+VM1SImQeqKbeY4ANth9D6pP2NTRxxF03Yz68mG29hx28vb8NDffPfinLdnBxTwt/kqchrkDZaLJQ7bwXpZbx025cyUPUkGKi5kOGR5WBqZQIHtWZhtmD/Rh2QSBXXXKx98BaDH6VBHSpM8ydUSIy1f/BxT2zSQ6zZk7F2RJuXjkP5tWHn8KQSyouMXfGh/iuoFEsTzqq+xx3EvcaOCDxQlY3slwABv/t8ud4DA3f73dooUe/sPgZMb+F21bV24BEUsGKyBVZ+/S7bQfTHt5272fEsV2/pfMwRkJUI9YrPyFjwd0krBcSE9BCcUC7XwpwFPF+aOhTu5qRd69Kvmi1KuZQb1bacjePPNPMe/NdnUnM7OIN6N2NGso0SIjVnPfO7VWVdWtVoD2lOy44YbmLXu6MazfcG8XZXYuFSufTvCYgUCWsJctxo+FtRuVNlfwa7kPlQNgNQDlpbkWUTHWXebTrUWLa4kIVf9AdQEorSqbaXLoJUxXHYFwmAnbvDZP6osLYmOk1ozi2Tnw6U+LJWQmCR1UZvyV6s5KqKjVTonSSUrdMVFGGEBfVJxWXE16mLq5U2cs1KeaTS3f5WWnrxYN6M679zPRiWwOcRexuETqg7Ml74OUmidfSq8/b+qP768ViIkfmk7Pbvej+I8uU58ntWO0yo5goVUkeVHmap7SYC60XaYxSXbi/fnTL54iVmWmOwuewJahDJRpEv6ZD/vVjrPMOKVZm89M25uLvykiNpvQu2bXpjN//znTWQ8SxH8trVD7Zdfd2XpOy5BBwyK0/fqS9NqRYySyVmnQ+aSS63tPwCzWSoEVGnbHa+PnDwyYOyTpzZ34bPikK3sTke5LuUzVGf5EVUqyk86WzJs27qAX78zczZRvfs+koKiPnb353DSlWfl/KFmnBwShz+uam3allu86iVQja619//16x7ZQipMvnisrH7Tt40VNe27PkeGyHqFNufXv/I52aGMf6jyiKqbHffyzl1hzp5KKaOc+bQjwqZROzLJTFxrf363uJTDo9BpVOzyb2ZvKF0nTTBZxSSLbnLpSg2YJDdzRTwp65Nd3IZkvZxvSa0unc0Mlfn166qWyCWeOJZeowjoaJyu33tgq3lZ/t65tIWHLsXRbsgMuZG/UwuMYzJfftwUwHtTt7q3yyMjn7SNYBXnM3fdt0itKF6S5DyniNW/IvRI3lS1tdY5QLWsut394SF1ETe4Ws/bCSga+YLfQuu+VdI+mZQsPfGaQ81MsW9u6QeZo1kd5bnvYKqfjkxlJi7A42H6LxycRSVh+xuCLVP9ws5TOpu42namQSNqVBSQVFP1FtFBKpWxu6eNJEJr/bgANQE6l15FZtFteyu+uZWxhYd0WTmZml5Zw01t4qNqtVrfGqkGtrbbpRyi0vzXSYuroLGpkYk6ZL6/n80tJSoQD/k8+vz+wl0pP/qw33j/7RP2LT/wOsLncNH5aLjwAAAABJRU5ErkJggg=='
                  ),
                ),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Subscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Video extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
