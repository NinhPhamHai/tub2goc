.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$3;
.super Ljava/lang/Object;
.source "SearchFragment2.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 148
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 153
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 154
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p2}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    invoke-static {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
