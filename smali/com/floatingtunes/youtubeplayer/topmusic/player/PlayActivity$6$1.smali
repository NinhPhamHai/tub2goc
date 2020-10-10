.class Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6$1;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6$1;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mRootParent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6$1$1;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6$1$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity$6$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
