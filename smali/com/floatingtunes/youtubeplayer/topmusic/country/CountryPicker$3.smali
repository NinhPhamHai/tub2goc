.class Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$3;
.super Ljava/lang/Object;
.source "CountryPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->sortCountries(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;)I
    .locals 0

    .line 370
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->getDialCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->getDialCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 367
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$3;->compare(Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;)I

    move-result p1

    return p1
.end method
