.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$3;
.super Ljava/lang/Object;
.source "RadioPlaying.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->setToolbar(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 243
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
