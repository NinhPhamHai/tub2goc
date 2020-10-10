.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SpotlightOnViewAllActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity_ViewBinding$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SpotlightOnViewAllActivity;->onViewClicked()V

    return-void
.end method
