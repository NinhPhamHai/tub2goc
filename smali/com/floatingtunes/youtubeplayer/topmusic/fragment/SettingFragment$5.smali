.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment$5;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->showCountryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectCountry(Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;)V
    .locals 0

    .line 164
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->saveCountryCode(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setCountrySuccess()V

    const/4 p1, 0x1

    .line 166
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setUserCountryChange(Z)V

    .line 167
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment$5;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V

    return-void
.end method
