import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _email = ''; // Example initialization for email
  String _password = ''; // Example initialization for password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('rpl-Mart'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, '/cart-page'); // Navigate to cart page
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // Carousel slider for banners
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://via.placeholder.com/800x400',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReAO_hVukOw2t5II1kBjdg8Z6x6PR1QY8XMQ&s',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReAO_hVukOw2t5II1kBjdg8Z6x6PR1QY8XMQ&s',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 150,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
    // Handle page changes
              print('Page changed to index $index due to $reason');
              },
            ),
          ),

          // Categories section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              CategoryCard(
                title: 'makanan',
                image: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAhFBMVEX///8AAABNTU339/fk5OT5+fmWlpbu7u709PT8/Pzd3d2srKy+vr7Nzc34+PjU1NQeHh6cnJwoKCiHh4e5ubl/f3/FxcVnZ2diYmJubm5XV1d8fHwyMjKjo6Pc3NxHR0c4ODgdHR0XFxd0dHSGhoZSUlIlJSU/Pz8PDw+Xl5epqal9fX3dMm9PAAAPXElEQVR4nNVd6WLivA7tAgQKDC1QoBtLV6b3/d/vDoRAdCzHkuxAvvNrpm3snMTWbuXqqm70unez6cPkZb56HW+219fbzXi9+np6nLxNB6OsV/v8tWI56Mxfr6vxuuj0R5e+UQN6d/2P+wC3Mn4ep61L37MCy7cvBbkjtvPf/wLL7nRuYVfg/mnQvTSFKmS/qxh6B9z8ZpcmwqM3vUlAL8dXv3kydviUjF6Oj0YJ2NsHjdyUYvzWlC1591IDvRwfTRCuQ5NmEGOxvDS/n1r57XBzyQ05TKEcwvi61HtcnoffDvNL7MdMqR42r6vnj8/JDo8fi9X4XXf5x9nlakd8b8+P/dld9scZoZ3dDX4fF1vpOG9n5TcT3dP4o79sB8dqj/qfInk1Pp/IaQuM63FnpllXt8OOYFc/uSuhFvSDdzKfmmznwUdwyU5Tk2Fw+xy4iZdhxOijSejhhZd9JAI7cD6LnyGwB+JnqESlCZrKVL7tV0qejyST8GhtKiZepBR1oyptO67NQ55WzPqZetZulcYdJJ7sgAoh0KlFjL/5J5zUMF3br68mtck3P8eb5HNmG99c8zrjRr0H37T3iacdeZ9l3Z5N16s8khpxA98sNW15guG4/sl92+El3RSV8C3Vh5onOKOt3/KYAJ00w3sUU6LRhfAsoyRagye4PXd8KFvXRZEnOL9A1J23OB5jh+X3YD/FHasxrIMi7+3epbljNbqsXRUlEFhbO73BJMcjd0MRMSrW3Y1e+FFgZapZ9d9xo/2mvF8D2M1oDJz8Sfq4kqHF3ZYtJs7ZEU1IW2ZMuPzeor04m74J6byrq9tv986+9MP8bSzBf944Y9+ojRtuQzeF4D8wFJXB4ttmE7xqMz6j7v6YwpEmEfxH0a2NeNVcz5jbTZCiZXTdHMen/GpmE15eDyIYvSgP+LvXnjc9KQPzHm6Fl344V9YRgI2H6/g8yy50n43wwrPDFRcyleG+/OaV0R3ginzJrbprtFl6ooy2I1Cfwhe50e1zZJatcB28sCPlGAuX9XhD+HUohq5w5NO3bKZe/3+dYwY4e5ioXvyy35l03mz1z05ZQSBs43q9ssxLvloOds9eGI+Pumk2mVTZC61T7OXnQU/StaCrk1JOpOevbB6yQrZkde/l3as3egUz6jWvE0yqFDaOJfQjm6WIye3NpsNTHee/OoSOPDZjy7Uu1TEXJ+VfteycRS1UFEU4er/7svzfm/xXi/x/N+x1bFpSm1FydtbK/7dL/FvpmikiHvv9dmB4EFHPFQw9eVeFj7CHE9X1W+DOK5TOsWAYvpIxOYZs1EzzYAtgIbZ3bzmvUOwyFY9m5jL88jNkAkoHKI0M51H59jI+CrnBTRge5lvnv7rxMmQj9AcoDUVMS3l2ovMK5dMUDIclhj8BhmxEvcBax9DxFviIBAZIFfVjhY1fZrgKMKw+Q6RMHqApxoZPM5xEUbBCGN4RTj6GfDLwBGWCC/c0lwD8hL/RCLQiAbBnuCSPceVhGCoJVmYFUWNwCzDmIRZHYcsMnysZekuQjtAxdHwiN2SDK1mlk4o1Mizd/CL/1Q/P0PWzEcpMOr5E1zLCOLnKyi+sy1GJ4ZyMiwyDBK/XOoa4Ex2vD1WFzu8triozPJj4ryxDyXEGZbUALkLU+rhqVJV/PTVDyYE+bQUCXL7w3OM1uT0TwyEZYswylJzIFEYXjsDYIpU1uE91Tlq7uGzpMvzmGHptbgJlBWkXLqeiCrwK5eM7emgMww3HsKpi/ARtkA+MMjIl0lemKY7m0F44HKTIQee+cwyrjO4TtH4imknlNYDPVBkQOi66va0+IAy3HEPZycUKX50H7O6ybQvvVydnSm7CnuGUMLzmGIoIqs0alDXlJwQjaw/eHE2wMsMXP0PHyPdAW6yO456WIi5g5cCn6zOHYaFICEPHE/VAHXYDw+wUo4CNrz5YxDJ89DOUHdA0JJ6h6u1EBIqM1KfDjne8XxaDMkN2lYZPMOZQZ55Rz4Z+rme41xaHB5lHoootShhWHPch0FeOQqVaERuGR6qVpCVls/MJs8LR2PkvvcJzJAy9B2EAWoXojFy4UGB16/OFp0c0/lsKe339do5BexNDfWIPZFgRLdzQH+sPFLlJPAdnYoh6L/8hbMONfljBHZv2oYEhpGnygCiYbPrFL2k/QALtUllqKHIBMrl/AdrQcJI4dAD7GmIS3oNiAGHysgxYkLlGhNCsIdeMgUgG5B2GA205LMc6aEIy33J0VK1nvYPgHRI/QeYA2w6mg6fbc6fTa0PRPqRZHiFDy8kVkHo7nQ9GoqVGTyA55uQCYeMsSy0WeBE75Q4vwFJHKrCkqViU9bZRlcQWgHDFbl7wfi1HfioTZTmo0BCYCNe2DYM7YLc7wKeyDIqxSAZ0acgcRNsJOSpqdoKTuk6GcwtXkrgLbCkRQ1vFIKiuLq5b2+HloLrAhLlkI25Nt4JiL0NlYTu4FVTh6K1LrBpjYTKIvRH+wNj9xXdkvoBzgYCh8RwnvLIBmqrGatlAENtdGWEzSB0tPQC23S/aANZuE5Uvce3+fdhwM59/oJbpBB+mtUtQ5R1zjy0ka+6tBOFhv0Am7908boVdw26oUFTY3g6Kqq4FmDRj87h+8egphqw21xf8RRIsyEA/wJgvkpQhY2uAbrzrvrKXecR5cerRj2GeiEd3xTUim1cY8lVbN+YcGZUs71DCEN0prFVaIz8B1eNXMVE92WD5g1lqCEMBSsHXoEbzuRhxTedA/znaIxaldxj279i3eB/ZlAJilWA+xTMsOS8ClcbU73ViT1nBykjOsCxQBX/eBdn+G3+KDJyL5AzL2R/RBSRmk+IQWd2rNI5hitPGKGlSy9KyfhVdkJwhagu0U2NRvmHRniIMY7q7FkCGNGsaZ9P8Q6+sfUSOSnKG1KbZwBEEq9t5RLs8msjZJAxTHIqnoah1Ot8iBzksJ5KMhGGK86pU/3xBitvuHx5AYgh6himaiNF994TZQ+mZfR8IQ5H5RRim6GxAfYmXVHGaAsR11zNM0esRLe00sbYjiNMnOmFLGCZoxujE2iC+EivMSEZCJPtTM3TipZA3im1WRpwFkZ9HGCZowOHEvJPkLTzji2Q/YZjg8D84TxlmxmKNGhJxE8l+wjBBv3U46HCL+UNDvRABYSha8kS4z8N/H4KbP4Tgc2TbRyKaRdqNMEzQJ4bS2YVHQSFG+i/EwdYzjInX5oBY+k50JajFKIE42CL9TRhGW/5IZycKQF1E7nXinIm0G2G4jpsdb+BgdNAfmUo8TiDOmShi8J1w9iu2Jgorh+O+wkEMedF6SMyQRmXygCYUL8QFnIk2EhXEfLt3FAG2hg1s7zjDibibIvOBMIz2TyFYmmtkoB3n5pOQgUi7UXcuNiAM2a+D/wY9YqI2ItnoovIjGuyL9cAplSKeSQMbcQ4USbiK9DdlGPm1IU+tPljjURqRJFxFHYqSMgRtWJgcoPON1VY5NuWRRLKfMoyMokAZ4tEEvfb83AAykKiiOiVDLPA4/gIOzcQkL/SrgTKMixPBfjtpK6yFiZhDPxBlGJf/hSrQU4yhTX8Rkz2gA0m0G2UY5bz5z5CiuWqXptABT88wKjUDPcjLrhgW25sd/Uw/DmUYZRXDEYCyq1vdjkABYCixUGjJUoy5gWUPRGrBMl1bJwEbVyL7KcOY5BPYpDRegIUt1m+NgfEgkf3JGFYvxLjeJieAXSh5UMkY4rcO4IuFUf1pToCSdonspwwjsgrAAJ1TPONhtGvAdpDIfsrQnl7DIjlHKmOfKJvCGARmYUAZ2pNPoCrcaAGqRNvDBImlZ2iOoWCJMnP/8Be2eAI8J4l2owzNySc8LMA4mtgVx7ReoKZMIhkpQ6vBiOqOUwZOUbIlZAIMJZKRMrSqKfx+EKunsEjbsiUgzSNJgiRhiIKUjxA55yQNMRM4nyJZ6VSIGxOIeOseNYU9aA2zGbpzUxFhO/+Ip6h8ASLnjJ3eWYN0q4QhXaWmFKkjQrwyHI+C6sPfsJclq5S6NaZ9iEdZ/DE+5yWq06WwSiX68G/cjFeqft4Y/dYb4DCZ5IPk1CI2xNqcc9brij92FrQ260xnk+mb8t6wbEPnnF+lR+N03dSumrJiEm7jspYyOG3OmbnqnB76yfplc3pGY6k+PS1tQyxR+30L96OAa+2U/UOyTmHXLnOt/2xxux3REZx3g1fofeFh/29/pvMvW9PpwBRWcJuOhG/PuaR5n1w7we3IIXBn3D7UsXXD9aHnfOJEIozdNh7RBfy1AS1pobfgHgq0Om11wz0sLQzWO58qSVGcXAPcVyH1TJiPkDbxy2RMuxGxxGC6BzTtI51sywLFe2B6NTftA3q37pedVVEs5iM3DdMZbr8CXac5rhtAkyj2mE8eK1cZc478PbKaJyWYxlTqrC7TIue7MRRdTW85KMKMsm3IQmVajFgKxHsbd5xGSNRbpinK1lTTyPYesaa/0yFz1YT5ybM9yuKKpOPBPnezg8d2RjI0hk0ItpNRxBkRtr3KJT0NtvVSlF/Ajri+mNZwvZ7r6D4Q/NdELrMZW2xTuOglxXdBvsTH1vmORNFdIHwU1+dW/m12haYRCp5e1imaA8jh+ZhgfKeSPTxdHFfne41/PD0Ik20WX9/8FP0BJPC1PUsYPvJ1DFyfI7iR8Tsw8T7xNpl9qn2pejudpuhlUwLzAe1iqcR356qAtxn6e3I359b/7dcUDUl4DLyNX38k6WUtKhrjxvaa4DH1N7ZN0HuBQ1UD5/Rite//qHV9AepWVcf/SUqZk1X1b/2uM9JQ+XXN51SZxqGT2C2jZu8t8BmEl3gF2epUfxui9hRKu/L5Xl9vOzGHs7K3yt67/1yJc/imwe913D/a/MfhJEDvbDmwW6ddsIvnh5GmVqG3/A2sjf2g5wsuDL0WThmrzkAi9bqjB5/lSfCe2EwLQPDxnAPNx/6sxSuSrDXrf4rI7XAuR+aIlmBVnbD9Xn89fXYeDuh8Pt2EPqdAsbhEQmEk+yJsCtxcKgU9C8q+JFifdwMCRyZTmZrfpfMIQ79XlQKrS76/AkvZ96ksqGrLf1Z0H7iMVyw2ncbknHeYifWaEPMmLE+K7ttP+L6F+OnXEaRIgOwthYr86jekXIBHNn0S2aw+LAaN2nwe3L0xdRwCrDrN23te9O76LypjYPF3GNsi6gLojfqdRciwu1+9vA3/CyvTjz/ZaNDvvDyvv08bdDu+efrf5GE6a9X/4v4PJyW47r09jf4AAAAASUVORK5CYII=',
              ),
              CategoryCard(
                title: 'minuman',
                image: 'data:image/png;base64,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',
              ),
              CategoryCard(
                title: 'dapur',
                image: 'data:image/jpeg;base64,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',
              ),
              CategoryCard(
                title: 'test',
                image: 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIHEhURDxMQDw8QEhoXEBYVEBcVFRUVFRMWGBUWFxUYHSggGR0nGxUWITIhJSorLi4uGB8zODMsNygtLisBCgoKDg0OGxAQGislHyUwLS0tLystLSsrKy0rLS0rLSstLS0tLSsvLS0tLSstLS0tLS0tLTctNy0tLSsrKzctLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABgcEBQgDAQL/xABJEAACAQICBQUKCgkDBQAAAAAAAQIDBAYRBQcSITETQVFhcSIyNUJSdJGhs8EUIzRUYnKBk7HRFTNDY3OSo7LCJIO0FjZkgqL/xAAYAQEBAQEBAAAAAAAAAAAAAAAAAwIBBP/EACIRAQEBAAICAQUBAQAAAAAAAAABAhExAzJREhMhImHBsf/aAAwDAQACEQMRAD8AvEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGDpfS9DQtN1bmpGlTXO3vb6IrjJ9SKZxjrSraV2qVltW1u8055/HVF2r9Wuzf1rgazm1nWpF6A59wfrHucP5U6u1d2vkyl8ZBfQm/7Xu60XZh7EdtiKnylrUU8u/i904PolB71+A1mwzuVtgFvBloAAAAAAAAAAAAAAAAAAAAAAAAAAAA1OIsR22HIcpdVFBPvIrfOb6IxW9/gBtc8iv8AGes6hoXapWmzdXK3Np/FU39KS75/Rj9rRXuMNY1ziHOnSztbV+JF/GTX7ya5vord2kKSyK58fyjryfDYab0zX07U5W6qSqz8XN9zBPmhHhFdn25mAAVSDI0ff1dGVFVt6k6NWPCUJZPsfSup7jHAFz4O1rU7zZpaR2aFR7lWSfJSfNtL9m+vvews6FRVEnFqUWs00800+dM5KJNhHHF1hhqMHy1tn3VGbeylz8m/Efq6ievH8K58ny6RBHsKYwtcURzoS2aqWdSlPJVI/Z4y61uJCR44Vl5AAHQAAAAAAAAAAAAAAAAAZgD8VKippuTSilm23kklxbZoMV4xtcMR+OntVms4UYNOpLry8Vdb3FI4uxxdYobjOXJW3i0YPue2cuM327uhGs4tY1uRP8Za1qdptUdHJVqnB1mvio/UXjvr73tKh0hfVdJVHVrzlVqy76Unm+pdCXUtxjgvnMiGtW9gAOuAAAAAAAAP3QrSt5RnTlKE4POEotqUX0prgWpg3Ww4bNHSaclwVeMd/wDuwX90V9nOVQDlzL27NWdOsbS6heQVSlONSnNZxlGScWupo9jmPDGKrrDM9q3n3Dec6Ut9OfTmvFf0lk+3gXdg/H9riZKGfIXXPSnJZy/hy8devqI6xYvncqXAZgw2AAAAAAAAAAAAGB43d3Cyg6lWUadOKzlKUlGKXW2VJjHWw550dGLJcHcSW/8A24Nf/T9HOeGu+zuadWnVlUnOymtmEM+4p1VnmnFbm2lmpPfxRWBXGJ2jvd54fuvWlcyc6kpTnN5ylJuUpPpbfE/CW1uW9kgwpg66xRL4mOxRTynWnugulLnm+pfa0W9bYItcL2Vw6ceVuPgtXarTSc/1Us1HyF1L7czd3IxnFqgSdYL0Hb6R0bpGvWpxnWoQfIybecHGi5prJ7t5BI8EWXq88EaV+pP/AIx3XRjtrNM6FoW+gbe8hTirqdZqdTftNZ1lk9/DuY+g3WJsL2lnpHRdCnRjGjcL4+KbynsuPHf1vPpMXEP/AGxa/wAd/wB9wSLGPhbQ/Y/xgY5/1rif8VvrB0fS0XpCvRoRVOlBx2YrgtqlCTyz62zFwroGpiS5hb0+52t9SeWapwj30n6kl0tG01p+FLntp+xpk+1G6JVG3q3TXdV6mxF/QpfnNy9CO28ZcmedcMfWVh22w9ouNO2pxh/qKe1PLOc3lLNynxf4FPF767PB684p/hIoqnTdZqMe+m1GP1pPJetoePo8k/KeatcArEmdxdbUbSMtmMYtp1pJ5SW0t8Yp7m1vb3bsmWPpPVno28p7EKKt5ZdzOm5KSfM3m8pfaSTQmjYaIt6VvTSUaMFFbuLS3vtbzf2mcSu7arMSRy3iPQlXD1xO3rZOUN8ZJbpweezNdGeXDmaaNYXPrz0SqtCldJLao1OTm+mFTh6JJfzMpgvm8xHU4vA1lx51muzpEXstNZpp5pp5NNcGnzMvHCmFrXE2iLWNxBOahPYqRyVSHxs+Eujqe4rvGGALrDLc0vhFqv2sF3q/eQ4x7eHZwOTcv4Liyct3g3WpV0blRv1K4obkqi/WwXWv2i9e7nLj0VpSjpemqttUhVpy4OL4dTXFPqe85UJxqis7m6vU7epUo0aa2rpp9zKO9Rg4vdJtrtSTfbneJ21jd6X+D4j6RXAAAAAAAAAABrcQaHp6eoVLet3lSOWa4xa3xks+dPeV3hLVHG3lymkpRrOLezSg3ybSe5zbWcs+Oyt2/fmWsDs1Z0zcy3l50aMaEVGEVCEVlGMUkkuhJcDBxL8kufNqvspGyNbiX5Jc+bVfZSOO1yzHgi0tVtpPSGjNJUaSTqVc4QTeScpW+S383Eq2PBFx6hqi5G6jn3XKwll1OGSfpiz0b6efx9vTTGDby60HQsIQg7qnVcpxdRKKW1Wee1wffxNxiPDtxf3+jrinGLo2n69uaTWbjwXPwJyGR+qr/THOetPwpc9tP2NMujVzbfBtGWi4bVCM321Ft/5FL615J6TuXHmUNr6yowzRfmHaXIWlvDybemvRTije/WMY9qh+uzwevOKf4SKbwtBVL21T4O6pZ/exLk12eD15xT/CRR1lc/AqlOqv2VSM/wCSSll6jvj9WfJ7OsUDzoVVXjGcXnGcVKL6U1mmehFdDdb0FLRVxnzSotdvwml+Zz0Xtrsvlb2CpZ91cVoJLqpvlH64x9JRJfx9IeT2dGarfBVr9SXtpkqcdrc96fEiuq3wVa/Ul7aZKyN7Wz1Fb4z1V0dJbVax2bau826fCjN8eC7x9a3dRJ8D4ajhi1hR3OrLuq8l41Rrfl9FcF1IkIF1bOHJmS8gAONAAAAAAAAAAAAAAa3EvyS582q+ykbI1uJfklz5tV9lIOVyzHgiS4CxQ8K3PKtOVCpHYrxXHZzzUl1p83OmyNR4I+nqs5eWXh1VonS1DTEFUtqtOtB88ZJ5dTXGL6mafF2MrbDNOTnOM7jL4ujGSc5PLdtLxY58ZP1kM1C0+4u5fTpr0Rk/eQfWdT5LSt2umcH6bek/eRmJ9XC93fp5R3Sd5PSFSpWqvaqVZSnN9cm3u6vcdTaHe1b0X00Yf2I5Te86iwnW5extJ+Xa0X6aUWa8nUZ8XdRXXZ4PXnFP8JFEF767PB684p/hIog74+mfJ7Lq1RYxhdUY2NeajXo7qDk0uVp55qK6ZRW7Li0k+ksi5uIWsXOpKMKcVnKUpJRSXFtvgcs6FhylzbrpuaK9NaC95emuOnt6LqvyalF/14L3mN5/LeNfqqvWRin/AKnus6efwagnCj9Lf3VT/wBsll1JdZEwC0nCNvLozVb4KtfqS9tMlZFNVvgq1+pL20yVnmvb1Z6AAcdAAAAAAAAAAAAAAAADW4l+SXPm1X2UjZGtxL8kufNqvspByuWY8EfT5Hgj6ep5Fz6hof6a5l03KXoowf8AkQrW9T5PSlZ+XClL+mo/4FgajaezY1H5V1J+inSXuIXrrp7OkU/KtoeqVRE57rX0iAl4atMbW9elaaOyq/CY0uT7zuPiqcpd9n5MCjyZ6oKe3pSk/Ip1Zf03H/I1ucxjF4qxtdcc9HZ9FxT/AMl7yhjoDXHDa0ZU6qlJ/wBWK95z+c8fTXk7bTCdPlb60X/mUfVWg/cXtrUp8pou558lCX8taD9xSur+nyukrRfv0/5Yyl7i9NYkNvRt2v3En6Mn7jO/aO49a5rABVJ0Zqt8FWv1Je2mSsiuq5ZaLtfqS9rMlR5r29WegAHHQAAAAAAAAAAAAAAAA1uJfklz5tV9lI2R+akFUTjJKUWsmms00+KaA5IjJZLeuB92kdT/AKBtPm1t9xD8h+gbT5tbfcQ/It93+I/a/qLamI5aMi/KrVX6J5e4hWvaKjeUH5Vv/bUl+ZdVtbQtI7NKEKcFwjGKit/Hctx5XejaN6061KlVaWSc6cZNLoWaMTX7ct3P68OUdpE+1Jx29It+TbVPXKmi6f0DafNrb7iH5Hta6MoWb2qVGjSlllnCnGLy6M0jV8nM4Znj4vKOa14bei7n6Kg/RWgc67SOtK9CNzFwqRjOEuMZJST7U+JhfoG0+bW33EPyM53xHd4+qqC1Wx5TSlt1Sm/RSn+ZemNKfK2F3Hptavqptmbb6It7aSnToUKc1wlGlGLX2pGXVpqqnGSUoyWUk1mmnxTRzWuby7nPE4ck7S6RtI6n/QNp82tvuIfkP0DafNrb7iH5FPu/xj7V+Wm1XeC7X+HL2syVHnb0IW0VCnGMILhGKUYrsS3I9CVVnQADjoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//2Q==',
              ),
            ],
          ),

          // Featured products section
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Featured Products',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ProductCard(
                title: 'Product 1',
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReAO_hVukOw2t5II1kBjdg8Z6x6PR1QY8XMQ&s',
                price: '\$19.99',
              ),
              ProductCard(
                title: 'Product 2',
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReAO_hVukOw2t5II1kBjdg8Z6x6PR1QY8XMQ&s',
                price: '\$29.99',
              ),
              ProductCard(
                title: 'Product 3',
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReAO_hVukOw2t5II1kBjdg8Z6x6PR1QY8XMQ&s',
                price: '\$39.99',
              ),
              ProductCard(
                title: 'Product 4',
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReAO_hVukOw2t5II1kBjdg8Z6x6PR1QY8XMQ&s',
                price: '\$49.99',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  CategoryCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(image),
          Text(title),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  ProductCard({required this.title, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(image),
          Text(title),
          Text(price),
        ],
      ),
    );
  }
}
