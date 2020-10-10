.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4$1;
.super Ljava/lang/Object;
.source "RadioPlaying.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->llBg:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4$1$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4$1$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying$4$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
