.class Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$5;
.super Ljava/lang/Object;
.source "CountryPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->setSearchEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$1400(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
