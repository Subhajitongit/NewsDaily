// ignore_for_file: unused_local_variable, unnecessary_new

import 'package:news_app/models/category_model.dart';

List<CategoryModel> getCategory() {
  List<CategoryModel> category = <CategoryModel>[];
  CategoryModel categorymodel;

  //1
  categorymodel = new CategoryModel();
  categorymodel.categoryName = "Business";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1600880292203-757bb62b4baf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80";
  category.add(categorymodel);

  //2
  categorymodel = new CategoryModel();
  categorymodel.categoryName = "Entertainment";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1598899134739-24c46f58b8c0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1456&q=80";
  category.add(categorymodel);

  //3
  categorymodel = new CategoryModel();
  categorymodel.categoryName = "General";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1494059980473-813e73ee784b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80";
  category.add(categorymodel);

  //4
  categorymodel = new CategoryModel();
  categorymodel.categoryName = "Health";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGhlYWx0aHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";
  category.add(categorymodel);

  //5
  categorymodel = new CategoryModel();
  categorymodel.categoryName = "Sports";
  categorymodel.imageUrl =
      "https://images.unsplash.com/photo-1517649763962-0c623066013b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3BvcnRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";
  category.add(categorymodel);

  //6
  categorymodel = new CategoryModel();
  categorymodel.categoryName = "Science";
  categorymodel.imageUrl =
      "https://media.istockphoto.com/photos/female-chemist-at-work-in-laboratory-picture-id637785818?b=1&k=20&m=637785818&s=170667a&w=0&h=BFOAFUMdVxMWc-a3w-m_00djwLalBINEHGNHToflXMM=";
  category.add(categorymodel);

  //7
  categorymodel = new CategoryModel();
  categorymodel.categoryName = "Technology";
  categorymodel.imageUrl = "https://media.istockphoto.com/photos/young-woman-global-communications-picture-id1299152059?b=1&k=20&m=1299152059&s=170667a&w=0&h=IkpHcQjfxB3_2MPRFZq7SppwMbNp2V4xT0Y2nONf1Ds=";
  category.add(categorymodel);

  return category;
}
