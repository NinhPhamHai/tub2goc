.class public Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;
.super Ljava/lang/Object;
.source "CountryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private canSearch:Z

.field private context:Landroid/content/Context;

.field private onCountryPickerListener:Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

.field private sortBy:I

.field private style:I

.field private theme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 584
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->sortBy:I

    const/4 v0, 0x1

    .line 585
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->canSearch:Z

    const/4 v0, 0x2

    .line 588
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->theme:I

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)I
    .locals 0

    .line 582
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->sortBy:I

    return p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->onCountryPickerListener:Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)I
    .locals 0

    .line 582
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->style:I

    return p0
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)Landroid/content/Context;
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)Z
    .locals 0

    .line 582
    iget-boolean p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->canSearch:Z

    return p0
.end method

.method static synthetic access$500(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)I
    .locals 0

    .line 582
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->theme:I

    return p0
.end method


# virtual methods
.method public build()Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;
    .locals 1

    .line 621
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)V

    return-object v0
.end method

.method public canSearch(Z)Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;
    .locals 0

    .line 611
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->canSearch:Z

    return-object p0
.end method

.method public listener(Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;)Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->onCountryPickerListener:Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

    return-object p0
.end method

.method public sortBy(I)Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;
    .locals 0

    .line 601
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->sortBy:I

    return-object p0
.end method

.method public with(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->context:Landroid/content/Context;

    return-object p0
.end method
