.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SettingFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->onMRateUsClicked()V

    return-void
.end method
