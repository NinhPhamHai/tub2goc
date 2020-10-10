.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SplashActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->onViewClicked()V

    return-void
.end method
