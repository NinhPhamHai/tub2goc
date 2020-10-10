.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "RadioPlaying_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;

.field final synthetic val$target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding$2;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding$2;->val$target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->onViewClicked(Landroid/view/View;)V

    return-void
.end method
