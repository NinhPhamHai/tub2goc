.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$3;
.super Ljava/lang/Object;
.source "NewTopFragment.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->showToastDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 328
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    .line 329
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setCountrySuccess()V

    return-void
.end method
