.class Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;
.super Ljava/lang/Object;
.source "CountryPicker.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->setupRecyclerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;)V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$600(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$600(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;->onSelectCountry(Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;)V

    .line 431
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 434
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$800(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 435
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$800(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 437
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$802(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 438
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$702(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;)Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;

    .line 439
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$902(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;I)I

    .line 440
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$1002(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;I)I

    .line 441
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$1102(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;I)I

    .line 442
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$1202(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;I)I

    .line 443
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->access$1302(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method
