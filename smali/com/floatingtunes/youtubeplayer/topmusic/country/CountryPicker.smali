.class public Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;
.super Ljava/lang/Object;
.source "CountryPicker.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/BottomSheetInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;
    }
.end annotation


# instance fields
.field private final COUNTRIES:[Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

.field private adapter:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;

.field private backgroundColor:I

.field private bottomSheetDialog:Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;

.field private canSearch:Z

.field private context:Landroid/content/Context;

.field private countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;",
            ">;"
        }
    .end annotation
.end field

.field private countriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private dialog:Landroid/app/Dialog;

.field private hintColor:I

.field private onCountryPickerListener:Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

.field private rootView:Landroid/widget/LinearLayout;

.field private searchEditText:Landroid/widget/EditText;

.field private searchIcon:Landroid/graphics/drawable/Drawable;

.field private searchIconId:I

.field private searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;",
            ">;"
        }
    .end annotation
.end field

.field private sortBy:I

.field private style:I

.field private textColor:I

.field private theme:I


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)V
    .locals 14

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa

    .line 45
    new-array v0, v0, [Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    new-instance v7, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v2, "AD"

    const-string v3, "Andorra"

    const-string v4, "+376"

    const v5, 0x7f0800eb

    const-string v6, "EUR"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v9, "AE"

    const-string v10, "United Arab Emirates"

    const-string v11, "+971"

    const v12, 0x7f0800ec

    const-string v13, "AED"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v5, "AF"

    const-string v6, "Afghanistan"

    const-string v7, "+93"

    const v8, 0x7f0800ed

    const-string v9, "AFN"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AG"

    const-string v7, "Antigua and Barbuda"

    const-string v8, "+1"

    const v9, 0x7f0800ee

    const-string v10, "XCD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x3

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AI"

    const-string v7, "Anguilla"

    const-string v8, "+1"

    const v9, 0x7f0800ef

    const-string v10, "XCD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x4

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AL"

    const-string v7, "Albania"

    const-string v8, "+355"

    const v9, 0x7f0800f0

    const-string v10, "ALL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x5

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AM"

    const-string v7, "Armenia"

    const-string v8, "+374"

    const v9, 0x7f0800f1

    const-string v10, "AMD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x6

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AO"

    const-string v7, "Angola"

    const-string v8, "+244"

    const v9, 0x7f0800f3

    const-string v10, "AOA"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x7

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AQ"

    const-string v7, "Antarctica"

    const-string v8, "+672"

    const v9, 0x7f0800f4

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AR"

    const-string v7, "Argentina"

    const-string v8, "+54"

    const v9, 0x7f0800f5

    const-string v10, "ARS"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AS"

    const-string v7, "American Samoa"

    const-string v8, "+1"

    const v9, 0x7f0800f6

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AT"

    const-string v7, "Austria"

    const-string v8, "+43"

    const v9, 0x7f0800f7

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AU"

    const-string v7, "Australia"

    const-string v8, "+61"

    const v9, 0x7f0800f8

    const-string v10, "AUD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AW"

    const-string v7, "Aruba"

    const-string v8, "+297"

    const v9, 0x7f0800f9

    const-string v10, "AWG"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AX"

    const-string v7, "Aland Islands"

    const-string v8, "+358"

    const v9, 0x7f0800fa

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "AZ"

    const-string v7, "Azerbaijan"

    const-string v8, "+994"

    const v9, 0x7f0800fb

    const-string v10, "AZN"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BA"

    const-string v7, "Bosnia and Herzegovina"

    const-string v8, "+387"

    const v9, 0x7f0800fc

    const-string v10, "BAM"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BB"

    const-string v7, "Barbados"

    const-string v8, "+1"

    const v9, 0x7f0800fd

    const-string v10, "BBD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BD"

    const-string v7, "Bangladesh"

    const-string v8, "+880"

    const v9, 0x7f0800fe

    const-string v10, "BDT"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BE"

    const-string v7, "Belgium"

    const-string v8, "+32"

    const v9, 0x7f0800ff

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x13

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BF"

    const-string v7, "Burkina Faso"

    const-string v8, "+226"

    const v9, 0x7f080100

    const-string v10, "XOF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x14

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BG"

    const-string v7, "Bulgaria"

    const-string v8, "+359"

    const v9, 0x7f080101

    const-string v10, "BGN"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x15

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BH"

    const-string v7, "Bahrain"

    const-string v8, "+973"

    const v9, 0x7f080102

    const-string v10, "BHD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x16

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BI"

    const-string v7, "Burundi"

    const-string v8, "+257"

    const v9, 0x7f080103

    const-string v10, "BIF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x17

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BJ"

    const-string v7, "Benin"

    const-string v8, "+229"

    const v9, 0x7f080104

    const-string v10, "XOF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x18

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BL"

    const-string v7, "Saint Barthelemy"

    const-string v8, "+590"

    const v9, 0x7f080105

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x19

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BM"

    const-string v7, "Bermuda"

    const-string v8, "+1"

    const v9, 0x7f080106

    const-string v10, "BMD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x1a

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BN"

    const-string v7, "Brunei Darussalam"

    const-string v8, "+673"

    const v9, 0x7f080107

    const-string v10, "BND"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x1b

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BO"

    const-string v7, "Bolivia, Plurinational State of"

    const-string v8, "+591"

    const v9, 0x7f080108

    const-string v10, "BOB"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x1c

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BQ"

    const-string v7, "Bonaire"

    const-string v8, "+599"

    const v9, 0x7f080109

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x1d

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BR"

    const-string v7, "Brazil"

    const-string v8, "+55"

    const v9, 0x7f08010a

    const-string v10, "BRL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x1e

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BS"

    const-string v7, "Bahamas"

    const-string v8, "+1"

    const v9, 0x7f08010b

    const-string v10, "BSD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x1f

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BT"

    const-string v7, "Bhutan"

    const-string v8, "+975"

    const v9, 0x7f08010c

    const-string v10, "BTN"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x20

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BV"

    const-string v7, "Bouvet Island"

    const-string v8, "+47"

    const v9, 0x7f08010d

    const-string v10, "NOK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x21

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BW"

    const-string v7, "Botswana"

    const-string v8, "+267"

    const v9, 0x7f08010e

    const-string v10, "BWP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x22

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BY"

    const-string v7, "Belarus"

    const-string v8, "+375"

    const v9, 0x7f08010f

    const-string v10, "BYR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x23

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "BZ"

    const-string v7, "Belize"

    const-string v8, "+501"

    const v9, 0x7f080110

    const-string v10, "BZD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x24

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CA"

    const-string v7, "Canada"

    const-string v8, "+1"

    const v9, 0x7f080111

    const-string v10, "CAD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x25

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CC"

    const-string v7, "Cocos (Keeling) Islands"

    const-string v8, "+61"

    const v9, 0x7f080112

    const-string v10, "AUD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x26

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CD"

    const-string v7, "Congo, The Democratic Republic of the"

    const-string v8, "+243"

    const v9, 0x7f080113

    const-string v10, "CDF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x27

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CF"

    const-string v7, "Central African Republic"

    const-string v8, "+236"

    const v9, 0x7f080114

    const-string v10, "XAF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x28

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CG"

    const-string v7, "Congo"

    const-string v8, "+242"

    const v9, 0x7f080115

    const-string v10, "XAF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x29

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CH"

    const-string v7, "Switzerland"

    const-string v8, "+41"

    const v9, 0x7f080116

    const-string v10, "CHF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x2a

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CI"

    const-string v7, "Ivory Coast"

    const-string v8, "+225"

    const v9, 0x7f080117

    const-string v10, "XOF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x2b

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CK"

    const-string v7, "Cook Islands"

    const-string v8, "+682"

    const v9, 0x7f080118

    const-string v10, "NZD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x2c

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CL"

    const-string v7, "Chile"

    const-string v8, "+56"

    const v9, 0x7f080119

    const-string v10, "CLP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x2d

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CM"

    const-string v7, "Cameroon"

    const-string v8, "+237"

    const v9, 0x7f08011a

    const-string v10, "XAF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x2e

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CN"

    const-string v7, "China"

    const-string v8, "+86"

    const v9, 0x7f08011b

    const-string v10, "CNY"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x2f

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CO"

    const-string v7, "Colombia"

    const-string v8, "+57"

    const v9, 0x7f08011c

    const-string v10, "COP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x30

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CR"

    const-string v7, "Costa Rica"

    const-string v8, "+506"

    const v9, 0x7f08011d

    const-string v10, "CRC"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x31

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CU"

    const-string v7, "Cuba"

    const-string v8, "+53"

    const v9, 0x7f08011e

    const-string v10, "CUP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x32

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CV"

    const-string v7, "Cape Verde"

    const-string v8, "+238"

    const v9, 0x7f08011f

    const-string v10, "CVE"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x33

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CW"

    const-string v7, "Curacao"

    const-string v8, "+599"

    const v9, 0x7f080120

    const-string v10, "ANG"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x34

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CX"

    const-string v7, "Christmas Island"

    const-string v8, "+61"

    const v9, 0x7f080121

    const-string v10, "AUD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x35

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CY"

    const-string v7, "Cyprus"

    const-string v8, "+357"

    const v9, 0x7f080122

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x36

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "CZ"

    const-string v7, "Czech Republic"

    const-string v8, "+420"

    const v9, 0x7f080123

    const-string v10, "CZK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x37

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "DE"

    const-string v7, "Germany"

    const-string v8, "+49"

    const v9, 0x7f080124

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x38

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "DJ"

    const-string v7, "Djibouti"

    const-string v8, "+253"

    const v9, 0x7f080125

    const-string v10, "DJF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x39

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "DK"

    const-string v7, "Denmark"

    const-string v8, "+45"

    const v9, 0x7f080126

    const-string v10, "DKK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x3a

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "DM"

    const-string v7, "Dominica"

    const-string v8, "+1"

    const v9, 0x7f080127

    const-string v10, "XCD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x3b

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "DO"

    const-string v7, "Dominican Republic"

    const-string v8, "+1"

    const v9, 0x7f080128

    const-string v10, "DOP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x3c

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "DZ"

    const-string v7, "Algeria"

    const-string v8, "+213"

    const v9, 0x7f080129

    const-string v10, "DZD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x3d

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "EC"

    const-string v7, "Ecuador"

    const-string v8, "+593"

    const v9, 0x7f08012a

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x3e

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "EE"

    const-string v7, "Estonia"

    const-string v8, "+372"

    const v9, 0x7f08012b

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x3f

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "EG"

    const-string v7, "Egypt"

    const-string v8, "+20"

    const v9, 0x7f08012c

    const-string v10, "EGP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x40

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "EH"

    const-string v7, "Western Sahara"

    const-string v8, "+212"

    const v9, 0x7f08012d

    const-string v10, "MAD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x41

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ER"

    const-string v7, "Eritrea"

    const-string v8, "+291"

    const v9, 0x7f08012e

    const-string v10, "ERN"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x42

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ES"

    const-string v7, "Spain"

    const-string v8, "+34"

    const v9, 0x7f08012f

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x43

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ET"

    const-string v7, "Ethiopia"

    const-string v8, "+251"

    const v9, 0x7f080130

    const-string v10, "ETB"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x44

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "FI"

    const-string v7, "Finland"

    const-string v8, "+358"

    const v9, 0x7f080131

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x45

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "FJ"

    const-string v7, "Fiji"

    const-string v8, "+679"

    const v9, 0x7f080132

    const-string v10, "FJD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x46

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "FK"

    const-string v7, "Falkland Islands (Malvinas)"

    const-string v8, "+500"

    const v9, 0x7f080133

    const-string v10, "FKP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x47

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "FM"

    const-string v7, "Micronesia, Federated States of"

    const-string v8, "+691"

    const v9, 0x7f080134

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x48

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "FO"

    const-string v7, "Faroe Islands"

    const-string v8, "+298"

    const v9, 0x7f080135

    const-string v10, "DKK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x49

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "FR"

    const-string v7, "France"

    const-string v8, "+33"

    const v9, 0x7f080136

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x4a

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GA"

    const-string v7, "Gabon"

    const-string v8, "+241"

    const v9, 0x7f080138

    const-string v10, "XAF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x4b

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GB"

    const-string v7, "United Kingdom"

    const-string v8, "+44"

    const v9, 0x7f080139

    const-string v10, "GBP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x4c

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GD"

    const-string v7, "Grenada"

    const-string v8, "+1"

    const v9, 0x7f08013a

    const-string v10, "XCD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x4d

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GE"

    const-string v7, "Georgia"

    const-string v8, "+995"

    const v9, 0x7f08013b

    const-string v10, "GEL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x4e

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GF"

    const-string v7, "French Guiana"

    const-string v8, "+594"

    const v9, 0x7f08013c

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x4f

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GG"

    const-string v7, "Guernsey"

    const-string v8, "+44"

    const v9, 0x7f08013d

    const-string v10, "GGP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x50

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GH"

    const-string v7, "Ghana"

    const-string v8, "+233"

    const v9, 0x7f08013e

    const-string v10, "GHS"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x51

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GI"

    const-string v7, "Gibraltar"

    const-string v8, "+350"

    const v9, 0x7f08013f

    const-string v10, "GIP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x52

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GL"

    const-string v7, "Greenland"

    const-string v8, "+299"

    const v9, 0x7f080140

    const-string v10, "DKK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x53

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GM"

    const-string v7, "Gambia"

    const-string v8, "+220"

    const v9, 0x7f080141

    const-string v10, "GMD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x54

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GN"

    const-string v7, "Guinea"

    const-string v8, "+224"

    const v9, 0x7f080142

    const-string v10, "GNF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x55

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GP"

    const-string v7, "Guadeloupe"

    const-string v8, "+590"

    const v9, 0x7f080143

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x56

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GQ"

    const-string v7, "Equatorial Guinea"

    const-string v8, "+240"

    const v9, 0x7f080144

    const-string v10, "XAF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x57

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GR"

    const-string v7, "Greece"

    const-string v8, "+30"

    const v9, 0x7f080145

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x58

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GS"

    const-string v7, "South Georgia and the South Sandwich Islands"

    const-string v8, "+500"

    const v9, 0x7f080146

    const-string v10, "GBP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x59

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GT"

    const-string v7, "Guatemala"

    const-string v8, "+502"

    const v9, 0x7f080147

    const-string v10, "GTQ"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x5a

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GU"

    const-string v7, "Guam"

    const-string v8, "+1"

    const v9, 0x7f080148

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x5b

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GW"

    const-string v7, "Guinea-Bissau"

    const-string v8, "+245"

    const v9, 0x7f080149

    const-string v10, "XOF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x5c

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "GY"

    const-string v7, "Guyana"

    const-string v8, "+595"

    const v9, 0x7f08014a

    const-string v10, "GYD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x5d

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "HK"

    const-string v7, "Hong Kong"

    const-string v8, "+852"

    const v9, 0x7f08014b

    const-string v10, "HKD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x5e

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "HM"

    const-string v7, "Heard Island and McDonald Islands"

    const-string v8, "+000"

    const v9, 0x7f08014c

    const-string v10, "AUD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x5f

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "HN"

    const-string v7, "Honduras"

    const-string v8, "+504"

    const v9, 0x7f08014d

    const-string v10, "HNL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x60

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "HR"

    const-string v7, "Croatia"

    const-string v8, "+385"

    const v9, 0x7f08014e

    const-string v10, "HRK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x61

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "HT"

    const-string v7, "Haiti"

    const-string v8, "+509"

    const v9, 0x7f08014f

    const-string v10, "HTG"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x62

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "HU"

    const-string v7, "Hungary"

    const-string v8, "+36"

    const v9, 0x7f080150

    const-string v10, "HUF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x63

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ID"

    const-string v7, "Indonesia"

    const-string v8, "+62"

    const v9, 0x7f080151

    const-string v10, "IDR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x64

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "IE"

    const-string v7, "Ireland"

    const-string v8, "+353"

    const v9, 0x7f080152

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x65

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "IL"

    const-string v7, "Israel"

    const-string v8, "+972"

    const v9, 0x7f080153

    const-string v10, "ILS"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x66

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "IM"

    const-string v7, "Isle of Man"

    const-string v8, "+44"

    const v9, 0x7f080154

    const-string v10, "GBP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x67

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "IN"

    const-string v7, "India"

    const-string v8, "+91"

    const v9, 0x7f080155

    const-string v10, "INR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x68

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "IO"

    const-string v7, "British Indian Ocean Territory"

    const-string v8, "+246"

    const v9, 0x7f080156

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x69

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "IQ"

    const-string v7, "Iraq"

    const-string v8, "+964"

    const v9, 0x7f080157

    const-string v10, "IQD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x6a

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "IR"

    const-string v7, "Iran, Islamic Republic of"

    const-string v8, "+98"

    const v9, 0x7f080158

    const-string v10, "IRR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x6b

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "IS"

    const-string v7, "Iceland"

    const-string v8, "+354"

    const v9, 0x7f080159

    const-string v10, "ISK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x6c

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "IT"

    const-string v7, "Italy"

    const-string v8, "+39"

    const v9, 0x7f08015a

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x6d

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "JE"

    const-string v7, "Jersey"

    const-string v8, "+44"

    const v9, 0x7f08015b

    const-string v10, "JEP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x6e

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "JM"

    const-string v7, "Jamaica"

    const-string v8, "+1"

    const v9, 0x7f08015c

    const-string v10, "JMD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x6f

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "JO"

    const-string v7, "Jordan"

    const-string v8, "+962"

    const v9, 0x7f08015d

    const-string v10, "JOD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x70

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "JP"

    const-string v7, "Japan"

    const-string v8, "+81"

    const v9, 0x7f08015e

    const-string v10, "JPY"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x71

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KE"

    const-string v7, "Kenya"

    const-string v8, "+254"

    const v9, 0x7f08015f

    const-string v10, "KES"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x72

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KG"

    const-string v7, "Kyrgyzstan"

    const-string v8, "+996"

    const v9, 0x7f080160

    const-string v10, "KGS"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x73

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KH"

    const-string v7, "Cambodia"

    const-string v8, "+855"

    const v9, 0x7f080161

    const-string v10, "KHR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x74

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KI"

    const-string v7, "Kiribati"

    const-string v8, "+686"

    const v9, 0x7f080162

    const-string v10, "AUD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x75

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KM"

    const-string v7, "Comoros"

    const-string v8, "+269"

    const v9, 0x7f080163

    const-string v10, "KMF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x76

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KN"

    const-string v7, "Saint Kitts and Nevis"

    const-string v8, "+1"

    const v9, 0x7f080164

    const-string v10, "XCD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x77

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KP"

    const-string v7, "North Korea"

    const-string v8, "+850"

    const v9, 0x7f080165

    const-string v10, "KPW"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x78

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KR"

    const-string v7, "South Korea"

    const-string v8, "+82"

    const v9, 0x7f080166

    const-string v10, "KRW"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x79

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KW"

    const-string v7, "Kuwait"

    const-string v8, "+965"

    const v9, 0x7f080167

    const-string v10, "KWD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x7a

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KY"

    const-string v7, "Cayman Islands"

    const-string v8, "+345"

    const v9, 0x7f080168

    const-string v10, "KYD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x7b

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "KZ"

    const-string v7, "Kazakhstan"

    const-string v8, "+7"

    const v9, 0x7f080169

    const-string v10, "KZT"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x7c

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LA"

    const-string v7, "Lao People\'s Democratic Republic"

    const-string v8, "+856"

    const v9, 0x7f08016a

    const-string v10, "LAK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x7d

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LB"

    const-string v7, "Lebanon"

    const-string v8, "+961"

    const v9, 0x7f08016b

    const-string v10, "LBP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x7e

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LC"

    const-string v7, "Saint Lucia"

    const-string v8, "+1"

    const v9, 0x7f08016c

    const-string v10, "XCD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x7f

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LI"

    const-string v7, "Liechtenstein"

    const-string v8, "+423"

    const v9, 0x7f08016d

    const-string v10, "CHF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x80

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LK"

    const-string v7, "Sri Lanka"

    const-string v8, "+94"

    const v9, 0x7f08016e

    const-string v10, "LKR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x81

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LR"

    const-string v7, "Liberia"

    const-string v8, "+231"

    const v9, 0x7f08016f

    const-string v10, "LRD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x82

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LS"

    const-string v7, "Lesotho"

    const-string v8, "+266"

    const v9, 0x7f080170

    const-string v10, "LSL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x83

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LT"

    const-string v7, "Lithuania"

    const-string v8, "+370"

    const v9, 0x7f080171

    const-string v10, "LTL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x84

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LU"

    const-string v7, "Luxembourg"

    const-string v8, "+352"

    const v9, 0x7f080172

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x85

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LV"

    const-string v7, "Latvia"

    const-string v8, "+371"

    const v9, 0x7f080173

    const-string v10, "LVL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x86

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "LY"

    const-string v7, "Libyan Arab Jamahiriya"

    const-string v8, "+218"

    const v9, 0x7f080174

    const-string v10, "LYD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x87

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MA"

    const-string v7, "Morocco"

    const-string v8, "+212"

    const v9, 0x7f080175

    const-string v10, "MAD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x88

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MC"

    const-string v7, "Monaco"

    const-string v8, "+377"

    const v9, 0x7f080176

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x89

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MD"

    const-string v7, "Moldova, Republic of"

    const-string v8, "+373"

    const v9, 0x7f080177

    const-string v10, "MDL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x8a

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ME"

    const-string v7, "Montenegro"

    const-string v8, "+382"

    const v9, 0x7f080178

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x8b

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MF"

    const-string v7, "Saint Martin"

    const-string v8, "+590"

    const v9, 0x7f080179

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x8c

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MG"

    const-string v7, "Madagascar"

    const-string v8, "+261"

    const v9, 0x7f08017a

    const-string v10, "MGA"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x8d

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MH"

    const-string v7, "Marshall Islands"

    const-string v8, "+692"

    const v9, 0x7f08017b

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x8e

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MK"

    const-string v7, "Macedonia, The Former Yugoslav Republic of"

    const-string v8, "+389"

    const v9, 0x7f08017c

    const-string v10, "MKD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x8f

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ML"

    const-string v7, "Mali"

    const-string v8, "+223"

    const v9, 0x7f08017d

    const-string v10, "XOF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x90

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MM"

    const-string v7, "Myanmar"

    const-string v8, "+95"

    const v9, 0x7f08017e

    const-string v10, "MMK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x91

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MN"

    const-string v7, "Mongolia"

    const-string v8, "+976"

    const v9, 0x7f08017f

    const-string v10, "MNT"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x92

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MO"

    const-string v7, "Macao"

    const-string v8, "+853"

    const v9, 0x7f080180

    const-string v10, "MOP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x93

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MP"

    const-string v7, "Northern Mariana Islands"

    const-string v8, "+1"

    const v9, 0x7f080181

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x94

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MQ"

    const-string v7, "Martinique"

    const-string v8, "+596"

    const v9, 0x7f080182

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x95

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MR"

    const-string v7, "Mauritania"

    const-string v8, "+222"

    const v9, 0x7f080183

    const-string v10, "MRO"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x96

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MS"

    const-string v7, "Montserrat"

    const-string v8, "+1"

    const v9, 0x7f080184

    const-string v10, "XCD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x97

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MT"

    const-string v7, "Malta"

    const-string v8, "+356"

    const v9, 0x7f080185

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x98

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MU"

    const-string v7, "Mauritius"

    const-string v8, "+230"

    const v9, 0x7f080186

    const-string v10, "MUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x99

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MV"

    const-string v7, "Maldives"

    const-string v8, "+960"

    const v9, 0x7f080187

    const-string v10, "MVR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x9a

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MW"

    const-string v7, "Malawi"

    const-string v8, "+265"

    const v9, 0x7f080188

    const-string v10, "MWK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x9b

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MX"

    const-string v7, "Mexico"

    const-string v8, "+52"

    const v9, 0x7f080189

    const-string v10, "MXN"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x9c

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MY"

    const-string v7, "Malaysia"

    const-string v8, "+60"

    const v9, 0x7f08018a

    const-string v10, "MYR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x9d

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "MZ"

    const-string v7, "Mozambique"

    const-string v8, "+258"

    const v9, 0x7f08018b

    const-string v10, "MZN"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x9e

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NA"

    const-string v7, "Namibia"

    const-string v8, "+264"

    const v9, 0x7f08018c

    const-string v10, "NAD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0x9f

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NC"

    const-string v7, "New Caledonia"

    const-string v8, "+687"

    const v9, 0x7f08018d

    const-string v10, "XPF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa0

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NE"

    const-string v7, "Niger"

    const-string v8, "+227"

    const v9, 0x7f08018e

    const-string v10, "XOF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa1

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NF"

    const-string v7, "Norfolk Island"

    const-string v8, "+672"

    const v9, 0x7f08018f

    const-string v10, "AUD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa2

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NG"

    const-string v7, "Nigeria"

    const-string v8, "+234"

    const v9, 0x7f080190

    const-string v10, "NGN"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa3

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NI"

    const-string v7, "Nicaragua"

    const-string v8, "+505"

    const v9, 0x7f080191

    const-string v10, "NIO"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa4

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NL"

    const-string v7, "Netherlands"

    const-string v8, "+31"

    const v9, 0x7f080192

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa5

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NO"

    const-string v7, "Norway"

    const-string v8, "+47"

    const v9, 0x7f080193

    const-string v10, "NOK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa6

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NP"

    const-string v7, "Nepal"

    const-string v8, "+977"

    const v9, 0x7f080194

    const-string v10, "NPR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa7

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NR"

    const-string v7, "Nauru"

    const-string v8, "+674"

    const v9, 0x7f080195

    const-string v10, "AUD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa8

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NU"

    const-string v7, "Niue"

    const-string v8, "+683"

    const v9, 0x7f080196

    const-string v10, "NZD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xa9

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "NZ"

    const-string v7, "New Zealand"

    const-string v8, "+64"

    const v9, 0x7f080197

    const-string v10, "NZD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xaa

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "OM"

    const-string v7, "Oman"

    const-string v8, "+968"

    const v9, 0x7f080198

    const-string v10, "OMR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xab

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PA"

    const-string v7, "Panama"

    const-string v8, "+507"

    const v9, 0x7f080199

    const-string v10, "PAB"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xac

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PE"

    const-string v7, "Peru"

    const-string v8, "+51"

    const v9, 0x7f08019a

    const-string v10, "PEN"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xad

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PF"

    const-string v7, "French Polynesia"

    const-string v8, "+689"

    const v9, 0x7f08019b

    const-string v10, "XPF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xae

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PG"

    const-string v7, "Papua New Guinea"

    const-string v8, "+675"

    const v9, 0x7f08019c

    const-string v10, "PGK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xaf

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PH"

    const-string v7, "Philippines"

    const-string v8, "+63"

    const v9, 0x7f08019d

    const-string v10, "PHP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb0

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PK"

    const-string v7, "Pakistan"

    const-string v8, "+92"

    const v9, 0x7f08019e

    const-string v10, "PKR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb1

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PL"

    const-string v7, "Poland"

    const-string v8, "+48"

    const v9, 0x7f08019f

    const-string v10, "PLN"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb2

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PM"

    const-string v7, "Saint Pierre and Miquelon"

    const-string v8, "+508"

    const v9, 0x7f0801a0

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb3

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PN"

    const-string v7, "Pitcairn"

    const-string v8, "+872"

    const v9, 0x7f0801a1

    const-string v10, "NZD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb4

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PR"

    const-string v7, "Puerto Rico"

    const-string v8, "+1"

    const v9, 0x7f0801a2

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb5

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PS"

    const-string v7, "Palestinian Territory, Occupied"

    const-string v8, "+970"

    const v9, 0x7f0801a3

    const-string v10, "ILS"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb6

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PT"

    const-string v7, "Portugal"

    const-string v8, "+351"

    const v9, 0x7f0801a4

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb7

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PW"

    const-string v7, "Palau"

    const-string v8, "+680"

    const v9, 0x7f0801a5

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb8

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "PY"

    const-string v7, "Paraguay"

    const-string v8, "+595"

    const v9, 0x7f0801a6

    const-string v10, "PYG"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xb9

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "QA"

    const-string v7, "Qatar"

    const-string v8, "+974"

    const v9, 0x7f0801a7

    const-string v10, "QAR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xba

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "RE"

    const-string v7, "Reunion"

    const-string v8, "+262"

    const v9, 0x7f0801a8

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xbb

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "RO"

    const-string v7, "Romania"

    const-string v8, "+40"

    const v9, 0x7f0801a9

    const-string v10, "RON"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xbc

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "RS"

    const-string v7, "Serbia"

    const-string v8, "+381"

    const v9, 0x7f0801aa

    const-string v10, "RSD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xbd

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "RU"

    const-string v7, "Russia"

    const-string v8, "+7"

    const v9, 0x7f0801ab

    const-string v10, "RUB"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xbe

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "RW"

    const-string v7, "Rwanda"

    const-string v8, "+250"

    const v9, 0x7f0801ac

    const-string v10, "RWF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xbf

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SA"

    const-string v7, "Saudi Arabia"

    const-string v8, "+966"

    const v9, 0x7f0801ad

    const-string v10, "SAR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc0

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SB"

    const-string v7, "Solomon Islands"

    const-string v8, "+677"

    const v9, 0x7f0801ae

    const-string v10, "SBD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc1

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SC"

    const-string v7, "Seychelles"

    const-string v8, "+248"

    const v9, 0x7f0801af

    const-string v10, "SCR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc2

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SD"

    const-string v7, "Sudan"

    const-string v8, "+249"

    const v9, 0x7f0801b0

    const-string v10, "SDG"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc3

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SE"

    const-string v7, "Sweden"

    const-string v8, "+46"

    const v9, 0x7f0801b1

    const-string v10, "SEK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc4

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SG"

    const-string v7, "Singapore"

    const-string v8, "+65"

    const v9, 0x7f0801b2

    const-string v10, "SGD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc5

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SH"

    const-string v7, "Saint Helena, Ascension and Tristan Da Cunha"

    const-string v8, "+290"

    const v9, 0x7f0801b3

    const-string v10, "SHP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc6

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SI"

    const-string v7, "Slovenia"

    const-string v8, "+386"

    const v9, 0x7f0801b4

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc7

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SJ"

    const-string v7, "Svalbard and Jan Mayen"

    const-string v8, "+47"

    const v9, 0x7f0801b5

    const-string v10, "NOK"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc8

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SK"

    const-string v7, "Slovakia"

    const-string v8, "+421"

    const v9, 0x7f0801b6

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc9

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SL"

    const-string v7, "Sierra Leone"

    const-string v8, "+232"

    const v9, 0x7f0801b7

    const-string v10, "SLL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xca

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SM"

    const-string v7, "San Marino"

    const-string v8, "+378"

    const v9, 0x7f0801b8

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xcb

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SN"

    const-string v7, "Senegal"

    const-string v8, "+221"

    const v9, 0x7f0801b9

    const-string v10, "XOF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xcc

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SO"

    const-string v7, "Somalia"

    const-string v8, "+252"

    const v9, 0x7f0801ba

    const-string v10, "SOS"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xcd

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SR"

    const-string v7, "Suriname"

    const-string v8, "+597"

    const v9, 0x7f0801bb

    const-string v10, "SRD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xce

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SS"

    const-string v7, "South Sudan"

    const-string v8, "+211"

    const v9, 0x7f0801bc

    const-string v10, "SSP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xcf

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ST"

    const-string v7, "Sao Tome and Principe"

    const-string v8, "+239"

    const v9, 0x7f0801bd

    const-string v10, "STD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd0

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SV"

    const-string v7, "El Salvador"

    const-string v8, "+503"

    const v9, 0x7f0801be

    const-string v10, "SVC"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd1

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SX"

    const-string v7, "Sint Maarten"

    const-string v8, "+1"

    const v9, 0x7f0801bf

    const-string v10, "ANG"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd2

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SY"

    const-string v7, "Syrian Arab Republic"

    const-string v8, "+963"

    const v9, 0x7f0801c0

    const-string v10, "SYP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd3

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "SZ"

    const-string v7, "Swaziland"

    const-string v8, "+268"

    const v9, 0x7f0801c1

    const-string v10, "SZL"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd4

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TC"

    const-string v7, "Turks and Caicos Islands"

    const-string v8, "+1"

    const v9, 0x7f0801c2

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd5

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TD"

    const-string v7, "Chad"

    const-string v8, "+235"

    const v9, 0x7f0801c3

    const-string v10, "XAF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd6

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TF"

    const-string v7, "French Southern Territories"

    const-string v8, "+262"

    const v9, 0x7f0801c4

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd7

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TG"

    const-string v7, "Togo"

    const-string v8, "+228"

    const v9, 0x7f0801c5

    const-string v10, "XOF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd8

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TH"

    const-string v7, "Thailand"

    const-string v8, "+66"

    const v9, 0x7f0801c6

    const-string v10, "THB"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xd9

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TJ"

    const-string v7, "Tajikistan"

    const-string v8, "+992"

    const v9, 0x7f0801c7

    const-string v10, "TJS"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xda

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TK"

    const-string v7, "Tokelau"

    const-string v8, "+690"

    const v9, 0x7f0801c8

    const-string v10, "NZD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xdb

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TL"

    const-string v7, "East Timor"

    const-string v8, "+670"

    const v9, 0x7f0801c9

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xdc

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TM"

    const-string v7, "Turkmenistan"

    const-string v8, "+993"

    const v9, 0x7f0801ca

    const-string v10, "TMT"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xdd

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TN"

    const-string v7, "Tunisia"

    const-string v8, "+216"

    const v9, 0x7f0801cb

    const-string v10, "TND"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xde

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TO"

    const-string v7, "Tonga"

    const-string v8, "+676"

    const v9, 0x7f0801cc

    const-string v10, "TOP"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xdf

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TR"

    const-string v7, "Turkey"

    const-string v8, "+90"

    const v9, 0x7f0801cd

    const-string v10, "TRY"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe0

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TT"

    const-string v7, "Trinidad and Tobago"

    const-string v8, "+1"

    const v9, 0x7f0801ce

    const-string v10, "TTD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe1

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TV"

    const-string v7, "Tuvalu"

    const-string v8, "+688"

    const v9, 0x7f0801cf

    const-string v10, "AUD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe2

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TW"

    const-string v7, "Taiwan"

    const-string v8, "+886"

    const v9, 0x7f0801d0

    const-string v10, "TWD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe3

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "TZ"

    const-string v7, "Tanzania, United Republic of"

    const-string v8, "+255"

    const v9, 0x7f0801d1

    const-string v10, "TZS"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe4

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "UA"

    const-string v7, "Ukraine"

    const-string v8, "+380"

    const v9, 0x7f0801d2

    const-string v10, "UAH"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe5

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "UG"

    const-string v7, "Uganda"

    const-string v8, "+256"

    const v9, 0x7f0801d3

    const-string v10, "UGX"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe6

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "UM"

    const-string v7, "U.S. Minor Outlying Islands"

    const-string v8, "+1"

    const v9, 0x7f0801d4

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe7

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "US"

    const-string v7, "United States"

    const-string v8, "+1"

    const v9, 0x7f0801d5

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe8

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "UY"

    const-string v7, "Uruguay"

    const-string v8, "+598"

    const v9, 0x7f0801d6

    const-string v10, "UYU"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xe9

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "UZ"

    const-string v7, "Uzbekistan"

    const-string v8, "+998"

    const v9, 0x7f0801d7

    const-string v10, "UZS"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xea

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "VA"

    const-string v7, "Holy See (Vatican City State)"

    const-string v8, "+379"

    const v9, 0x7f0801d8

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xeb

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "VC"

    const-string v7, "Saint Vincent and the Grenadines"

    const-string v8, "+1"

    const v9, 0x7f0801d9

    const-string v10, "XCD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xec

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "VE"

    const-string v7, "Venezuela, Bolivarian Republic of"

    const-string v8, "+58"

    const v9, 0x7f0801da

    const-string v10, "VEF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xed

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "VG"

    const-string v7, "Virgin Islands, British"

    const-string v8, "+1"

    const v9, 0x7f0801db

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xee

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "VI"

    const-string v7, "Virgin Islands, U.S."

    const-string v8, "+1"

    const v9, 0x7f0801dc

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xef

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "VN"

    const-string v7, "Vietnam"

    const-string v8, "+84"

    const v9, 0x7f0801dd

    const-string v10, "VND"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf0

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "VU"

    const-string v7, "Vanuatu"

    const-string v8, "+678"

    const v9, 0x7f0801de

    const-string v10, "VUV"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf1

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "WF"

    const-string v7, "Wallis and Futuna"

    const-string v8, "+681"

    const v9, 0x7f0801df

    const-string v10, "XPF"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf2

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "WS"

    const-string v7, "Samoa"

    const-string v8, "+685"

    const v9, 0x7f0801e0

    const-string v10, "WST"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf3

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "XK"

    const-string v7, "Kosovo"

    const-string v8, "+383"

    const v9, 0x7f0801e1

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf4

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "YE"

    const-string v7, "Yemen"

    const-string v8, "+967"

    const v9, 0x7f0801e2

    const-string v10, "YER"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf5

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "YT"

    const-string v7, "Mayotte"

    const-string v8, "+262"

    const v9, 0x7f0801e3

    const-string v10, "EUR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf6

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ZA"

    const-string v7, "South Africa"

    const-string v8, "+27"

    const v9, 0x7f0801e5

    const-string v10, "ZAR"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf7

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ZM"

    const-string v7, "Zambia"

    const-string v8, "+260"

    const v9, 0x7f0801e6

    const-string v10, "ZMW"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf8

    aput-object v2, v0, v4

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    const-string v6, "ZW"

    const-string v7, "Zimbabwe"

    const-string v8, "+263"

    const v9, 0x7f0801e7

    const-string v10, "USD"

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xf9

    aput-object v2, v0, v4

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->COUNTRIES:[Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    .line 313
    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->sortBy:I

    .line 315
    iput-boolean v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->canSearch:Z

    .line 337
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->sortBy:I

    .line 338
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->onCountryPickerListener:Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

    .line 341
    :cond_0
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->style:I

    .line 342
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->context:Landroid/content/Context;

    .line 343
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->canSearch:Z

    .line 344
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;->access$500(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$Builder;)I

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->theme:I

    .line 345
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->COUNTRIES:[Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->countries:Ljava/util/List;

    .line 346
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->countries:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->sortCountries(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->hintColor:I

    return p1
.end method

.method static synthetic access$1102(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->backgroundColor:I

    return p1
.end method

.method static synthetic access$1202(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchIconId:I

    return p1
.end method

.method static synthetic access$1302(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->search(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Landroid/widget/EditText;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->onCountryPickerListener:Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnCountryPickerListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->bottomSheetDialog:Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;)Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->bottomSheetDialog:Lcom/floatingtunes/youtubeplayer/topmusic/country/BottomSheetDialogView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)Landroid/app/Dialog;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$802(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$902(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->textColor:I

    return p1
.end method

.method private search(Ljava/lang/String;)V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 492
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->countries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    .line 493
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchResults:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchResults:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->sortCountries(Ljava/util/List;)V

    .line 498
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->adapter:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private sortCountries(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;",
            ">;)V"
        }
    .end annotation

    .line 352
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->sortBy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 353
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$1;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 360
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$2;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 367
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$3;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public initiateUi(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090082

    .line 529
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchEditText:Landroid/widget/EditText;

    const v0, 0x7f090080

    .line 530
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->countriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090221

    .line 531
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->rootView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setCustomStyle(Landroid/view/View;)V
    .locals 4

    .line 504
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->style:I

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 505
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->style:I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    .line 511
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->textColor:I

    const/4 v0, 0x1

    const v1, -0x777778

    .line 512
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->hintColor:I

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 513
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->backgroundColor:I

    const/4 v0, 0x3

    const v1, 0x7f08027b

    .line 514
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchIconId:I

    .line 515
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchEditText:Landroid/widget/EditText;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->textColor:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 516
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchEditText:Landroid/widget/EditText;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->hintColor:I

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 517
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchIconId:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchIcon:Landroid/graphics/drawable/Drawable;

    .line 518
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchIconId:I

    if-ne v0, v1, :cond_0

    .line 519
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchIcon:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->hintColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchIcon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 522
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->rootView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 523
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x1010098
        0x101009a
        0x10100d4
        0x1010199
    .end array-data
.end method

.method public setSearchEditText()V
    .locals 2

    .line 457
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->canSearch:Z

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$5;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 474
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$6;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setupRecyclerView(Landroid/view/View;)V
    .locals 5

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchResults:Ljava/util/List;

    .line 424
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchResults:Ljava/util/List;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->countries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 425
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->searchResults:Ljava/util/List;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;)V

    iget v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->textColor:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnItemClickListener;I)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->adapter:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;

    .line 448
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->countriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 449
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 450
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 451
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->countriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 452
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->countriesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->adapter:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public showDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->countries:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->dialog:Landroid/app/Dialog;

    .line 383
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 384
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->initiateUi(Landroid/view/View;)V

    .line 385
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->setCustomStyle(Landroid/view/View;)V

    .line 386
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->setSearchEditText()V

    .line 387
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->setupRecyclerView(Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 389
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 390
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 391
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 392
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 393
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 394
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->theme:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 395
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->context:Landroid/content/Context;

    const v0, 0x7f080214

    .line 396
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 398
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountryPicker;->dialog:Landroid/app/Dialog;

    return-object p1

    .line 380
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no country found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
