.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ManageListActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->onMLlDeleteClicked()V

    return-void
.end method
