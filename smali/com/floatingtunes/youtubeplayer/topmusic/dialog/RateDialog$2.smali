.class Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog$2;
.super Ljava/lang/Object;
.source "RateDialog.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->onViewClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    const-string p3, ""

    invoke-static {p1, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    .line 147
    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_0

    .line 148
    aget-object v0, p2, p3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 151
    :cond_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
