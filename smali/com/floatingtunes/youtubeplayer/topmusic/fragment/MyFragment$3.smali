.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment$3;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->onCreateFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnNegativeClick()V
    .locals 0

    return-void
.end method

.method public OnPositiveClick()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->loadAllData()V

    return-void
.end method
