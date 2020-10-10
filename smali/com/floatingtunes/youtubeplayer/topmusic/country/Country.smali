.class public Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;
.super Ljava/lang/Object;
.source "Country.java"


# instance fields
.field private code:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private dialCode:Ljava/lang/String;

.field private flag:I

.field private name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->code:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->name:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->dialCode:Ljava/lang/String;

    .line 26
    iput p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->flag:I

    .line 27
    iput-object p5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDialCode()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->dialCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->flag:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->name:Ljava/lang/String;

    return-object v0
.end method

.method public loadFlagByCode(Landroid/content/Context;)V
    .locals 5

    .line 76
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->flag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flag_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->code:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {v0, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->flag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->flag:I

    :goto_0
    return-void
.end method
