package onlineshopping.model;

import java.util.ArrayList;

public class Repository {
     private ArrayList<Goods> repo ;

	public Repository() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Repository(ArrayList<Goods> repo) {
		super();
		this.repo = repo;
	}

	public ArrayList<Goods> getRepo() {
		return repo;
	}

	public void setRepo(ArrayList<Goods> repo) {
		this.repo = repo;
	}

	@Override
	public String toString() {
		return "Repository [repo=" + repo + "]";
	}
     
}
