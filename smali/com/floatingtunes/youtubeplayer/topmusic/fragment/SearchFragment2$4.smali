.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;
.super Ljava/lang/Object;
.source "SearchFragment2.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->initSearchEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 176
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 177
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mBtnTextClean:Landroid/widget/ImageButton;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 178
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mBtnTextClean:Landroid/widget/ImageButton;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 183
    :goto_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->isPerformingCompletion()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    iget-boolean p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->isHistoryKeyClick:Z

    if-nez p2, :cond_1

    .line 184
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
