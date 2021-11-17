package onlineshopping.model;

import java.util.ArrayList;

public class Repository {
     private ArrayList<Good1> repo ;

	public Repository() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Repository(ArrayList<Good1> repo) {
		super();
		this.repo = repo;
	}

	public ArrayList<Good1> getRepo() {
		return repo;
	}

	public void setRepo(ArrayList<Good1> repo) {
		this.repo = repo;
	}

	@Override
	public String toString() {
		return "Repository [repo=" + repo + "]";
	}
     
}
