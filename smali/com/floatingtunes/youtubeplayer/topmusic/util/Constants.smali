.class public Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static AE_PLAYLIST_ID:Ljava/lang/String;

.field public static final APP_NAME:Ljava/lang/String;

.field public static BR_PLAYLIST_ID:Ljava/lang/String;

.field public static DE_PLAYLIST_ID:Ljava/lang/String;

.field public static EG_PLAYLIST_ID:Ljava/lang/String;

.field public static ES_PLAYLIST_ID:Ljava/lang/String;

.field public static FR_PLAYLIST_ID:Ljava/lang/String;

.field public static HK_PLAYLIST_ID:Ljava/lang/String;

.field public static HU_PLAYLIST_ID:Ljava/lang/String;

.field public static ID_PLAYLIST_ID:Ljava/lang/String;

.field public static IN_PLAYLIST_ID:Ljava/lang/String;

.field public static ISINSTALLFACEVBOOK:Z

.field public static IT_PLAYLIST_ID:Ljava/lang/String;

.field public static JP_PLAYLIST_ID:Ljava/lang/String;

.field public static KR_PLAYLIST_ID:Ljava/lang/String;

.field public static MX_PLAYLIST_ID:Ljava/lang/String;

.field public static MY_PLAYLIST_ID:Ljava/lang/String;

.field public static NL_PLAYLIST_ID:Ljava/lang/String;

.field public static PH_PLAYLIST_ID:Ljava/lang/String;

.field public static PL_PLAYLIST_ID:Ljava/lang/String;

.field public static PT_PLAYLIST_ID:Ljava/lang/String;

.field public static RO_PLAYLIST_ID:Ljava/lang/String;

.field public static SA_PLAYLIST_ID:Ljava/lang/String;

.field public static SEARCH_SUGGEST:Ljava/lang/String;

.field public static final SHARE_TEXT:Ljava/lang/String;

.field public static TH_PLAYLIST_ID:Ljava/lang/String;

.field public static TR_PLAYLIST_ID:Ljava/lang/String;

.field public static UK_PLAYLIST_ID:Ljava/lang/String;

.field public static US_PLAYLIST_ID:Ljava/lang/String;

.field public static VN_PLAYLIST_ID:Ljava/lang/String;

.field public static ZA_PLAYLIST_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110045

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->APP_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    .line 16
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->ISINSTALLFACEVBOOK:Z

    const-string v0, "http://suggestqueries.google.com/complete/search?client=youtube&q="

    .line 17
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->SEARCH_SUGGEST:Ljava/lang/String;

    const-string v0, "PLFgquLnL59akA2PflFpeQG9L01VFg90wS"

    .line 20
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->US_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59amEA53mO3KiIJRSNAzO-PRZ"

    .line 21
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->UK_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59akKD5xsdJV4m5ZtDO3bvnyJ"

    .line 22
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->AE_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59akiDCvSDj_twu2hA4CKy14h"

    .line 23
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->SA_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59anXJeGNQ9Iu12s2j03NMsRr"

    .line 24
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->MY_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59anCXm7LbIFMGJVvervbfw_k"

    .line 25
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->PH_PLAYLIST_ID:Ljava/lang/String;

    const-string v1, "PLFgquLnL59an-05S-d-D1md6qdfjC0GOO"

    .line 26
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->TR_PLAYLIST_ID:Ljava/lang/String;

    const-string v1, "PLFgquLnL59alQ4PrI-9tZyl0Z8Bqp-RE7"

    .line 27
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->ID_PLAYLIST_ID:Ljava/lang/String;

    const-string v1, "PLFgquLnL59anUbTCum31nHshzm-3pAMP-"

    .line 28
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->ES_PLAYLIST_ID:Ljava/lang/String;

    const-string v1, "PLFgquLnL59al7skI9BUiIRHydIlHqe7c2"

    .line 29
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->PT_PLAYLIST_ID:Ljava/lang/String;

    const-string v1, "PLFgquLnL59ak5FwmTB7DRJqX3M2B1D7xI"

    .line 30
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->FR_PLAYLIST_ID:Ljava/lang/String;

    const-string v1, "PLFgquLnL59anyL_D9pf-f5orGTvIFI2x_"

    .line 31
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->IT_PLAYLIST_ID:Ljava/lang/String;

    const-string v1, "PLFgquLnL59alxKOClL2CCGsejK4H9HUCV"

    .line 32
    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->DE_PLAYLIST_ID:Ljava/lang/String;

    .line 33
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->HU_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59akxkuW7czf5TvyjzcUMgaci"

    .line 34
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->RO_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59alUd_1FFpbZH2mhqowGXAdI"

    .line 35
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->PL_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59anecQ1woaImBSMJDwfrYjmz"

    .line 36
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->TH_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59alDqvbikpe5jUhFa_lLl8_H"

    .line 37
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->NL_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59anfy66Thi2waVYeMxbfgHr1"

    .line 38
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->VN_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59alGJcdc0BEZJb2p7IgkL0Oe"

    .line 39
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->KR_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59alxIWnf4ivu5bjPeHSlsUe9"

    .line 40
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->JP_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59amAlpdLTWJTX6BIPunJ8s-A"

    .line 41
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->HK_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59anY816QqRgna_SMl5EpJydj"

    .line 42
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->MX_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59amgHJoypBNANk_038__LaXM"

    .line 43
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->BR_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59ak874CDsP-GwmheYN-TCJxK"

    .line 44
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->ZA_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59alt0YoTZrL0obWRrE61mbLk"

    .line 45
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->EG_PLAYLIST_ID:Ljava/lang/String;

    const-string v0, "PLFgquLnL59alF0GjxEs0V_XFCe7LM3ReH"

    .line 46
    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->IN_PLAYLIST_ID:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Here\'s an app for you... \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", a third-party client that lets you stream unlimited music online from YouTube for FREE.\nhttps://play.google.com/store/apps/details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->SHARE_TEXT:Ljava/lang/String;

    return-void
.end method
