.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment$1;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 87
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mCbLock:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setLockStatus(Landroid/content/Context;Z)V

    return-void
.end method
