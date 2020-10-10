.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "GenresAllActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity_ViewBinding$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity_ViewBinding$1;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/GenresAllActivity;->onViewClicked()V

    return-void
.end method
